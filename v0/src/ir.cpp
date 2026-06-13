#include <cstdint>
#include <string_view>
#include <vector>
#include <string_view>
#include <unordered_map>
#include <iostream>
#include <span>
#include "parser.h"
#include <ranges>
#include <deque>
#include <sstream>
#include <set>
#include <array>
#include "ir.h"
void exec_ir();

namespace ir{


quartix_ir ir;

bool in_entry_point(){
    return ir.entry_point==ir.current_definition;
}



//===========================================
//Implementation for IR operations
//===========================================
operation::operation(function_call *fc){
    operation_data = (void(*)) fc;
    operation_type = ir::operation_type::call;

}
operation::operation(value* val){
    operation_data = (void(*))val;
    operation_type = ir::operation_type::value;
}
operation::operation(builtin_function* bop){
    operation_data = (void(*))bop;
    operation_type = ir::operation_type::builtin_function;
}

operation::operation(){}
void operation::require_operation_type(ir::operation_type ot){
    if(operation_type!=ot){
        std::cout << "called function requiring other operation type;" << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
        std::terminate();
    }
}
operation_kind::call* operation::as_function_call(){
    require_operation_type(ir::operation_type::call);
    return operation_data_as_call;
}
operation_kind::value* operation::as_value(){
    require_operation_type(operation_type::value);
    return operation_data_as_value;
}

operation_kind::builtin_function* operation::as_builtin_function(){
    require_operation_type(operation_type::builtin_function);
    return operation_data_as_builtin_function;
}
















//================================================
// DATA TYPES
//=====================================================

data_type get_builtin_data_type(builtin_data_type bdt);
data_type get_unresolved_data_type(unresolved_data_type udt);

data_type::data_type(data_type_id typeId){
    TypeId=typeId;
}
data_type::data_type(){
    *this=get_unresolved_data_type(unresolved_data_type::any);
}
bool data_type::operator==(const data_type&comp) const{
    return comp.TypeId==TypeId;
}

data_type_data::data_type_data(){}

data_type_data* data_type::data()const{
        
    if(TypeId>=ir.data_type_record.size()){
        std::cout << "error at line: " << __LINE__ << " in file: "<<__FILE__ << "\n";   
        std::terminate();   
            }
    return &ir.data_type_record[TypeId];
}

void add_data_type(std::string_view name,data_type_data dtd){
    ir.data_type_record.push_back(dtd);
    data_type dt(data_type_id(ir.data_type_record.size()-1));
    ir.data_type_name_record.insert(std::make_pair(name,dt));


}

void add_builtin_data_type_to_record(builtin_data_type bdt,std::string_view name){
    data_type_data dtd;
    dtd.as_builtin= bdt;
    dtd.type=data_type_data::type::as_builtin;
    dtd.name=name;
    add_data_type(name,dtd);
}
void add_unresolved_data_type_to_record(unresolved_data_type udt,std::string_view name){
    data_type_data dtd;
    dtd.type = data_type_data::type::as_unresolved;
    dtd.as_unresolved=udt;
    dtd.name=name;
    add_data_type(name,dtd);
}
std::unordered_map<builtin_data_type,std::string_view> builtin_data_type_names{
        {builtin_data_type::i8,"i8"},
        {builtin_data_type::i16,"i16"},
        {builtin_data_type::i32,"i32"},
        {builtin_data_type::i64,"i64"},
        {builtin_data_type::u8,"u8"},
        {builtin_data_type::u16,"u16"},
        {builtin_data_type::u32,"u32"},
        {builtin_data_type::u64,"u64"},
        {builtin_data_type::f32,"f32"},
        {builtin_data_type::f64,"f64"},
        {builtin_data_type::string,"string"},
        {builtin_data_type::void_data_type,"void"},
    
    };
std::unordered_map<std::string_view,builtin_data_type> additional_bdt_names{
    {"int",builtin_data_type::i32},
    {"float",builtin_data_type::f32}
};

std::unordered_map<unresolved_data_type,std::string_view> unresolved_data_type_names{
    {unresolved_data_type::any,"auto"},
    {unresolved_data_type::unresolved_float,"#unresolved_float"},
    {unresolved_data_type::unresolved_int,"#unresolved_int"},
    {unresolved_data_type::unresolved_string,"#unresolved_string"}
};

void init_bultin_data_types(){

    for(auto&[dt,name]:builtin_data_type_names){
        add_builtin_data_type_to_record(dt,name);
    }
    for(auto[name,dt]:additional_bdt_names){
        add_builtin_data_type_to_record(dt,name);
    }
    for(auto&[dt,name]:unresolved_data_type_names){
        add_unresolved_data_type_to_record(dt,name);
    }
}



data_type get_data_type(std::string_view name){
    return ir.data_type_name_record[name];
}

data_type get_builtin_data_type(builtin_data_type bdt){
    return get_data_type(builtin_data_type_names.at(bdt));
}

data_type get_unresolved_data_type(unresolved_data_type udt){
    return get_data_type(unresolved_data_type_names.at(udt));
}



















//====================================================
// FUNCTIONS
//===================================================

void declare_function(std::string_view name,data_type return_type,std::vector<data_type> arguments){
    function fd;
    fd.name =name;
    fd.parameters = arguments;
    fd.return_type = return_type;
    ir.function_record[name].push_back(fd);
}


function_definition*make_function_definition(){
    function_definition* result = new function_definition();
    ir.function_definitions.push_back(result);
    return result;
}
std::vector<builtin_data_type> int_conversion_record{builtin_data_type::i32,builtin_data_type::i8,builtin_data_type::i16,builtin_data_type::i64,builtin_data_type::f32,builtin_data_type::f64};


bool type_can_be_set_to_type(const data_type dt2,const data_type dt1){
    if(dt1.data()->type==data_type_data::type::as_unresolved && dt2.data()->type==data_type_data::type::as_builtin){
        if(dt1.data()->as_unresolved==unresolved_data_type::unresolved_int){
            for(auto i:int_conversion_record){
                if(dt2.data()->as_builtin==i){
                    return true;
                    }
                }
        }
        if(dt1.data()->as_unresolved==unresolved_data_type::unresolved_float){
            if(dt2.data()->as_builtin==builtin_data_type::f32 || dt2.data()->as_builtin==builtin_data_type::f64){
                return true;
            }
        }
        if(dt1.data()->as_unresolved==unresolved_data_type::unresolved_string){
            if(dt2.data()->as_builtin==builtin_data_type::string){
                return true;
            }
        }


    }
    return dt1==dt2;
}

function*get_function(std::string_view name,std::span<data_type> arg_types){
    if(!ir.function_record.contains(name)){
        std::cout << "function with name: " << name << " doesn't exist\n";
        std::terminate();
    }
    std::deque<function>& candidate_functions = ir.function_record[name];
    for(auto&a:candidate_functions){
        if(a.parameters.size()==arg_types.size()){
            if(a.parameters.size()==0) return &a;
            for(uint32_t k =0;k<arg_types.size();k++){
                if(!type_can_be_set_to_type(a.parameters[k],arg_types[k])){
                    k=arg_types.size();
                    continue;
                }
                
                return &a;
            }

        }
        continue;
    }
    std::cout << "function with name: " << name << " doesn't exist\n";
    std::terminate();
    return nullptr;
}

value& builtin_function::binary_left(){
    return arg_list[0];
}
value& builtin_function::binary_right(){
    return arg_list[1];
}
builtin_function make_builtin_function(builtin_function_type type,ir::argument_list arg_list){
    builtin_function result;
    result.type=type;
    result.arg_list =arg_list;

    return result;
}


















//==========================================
// VALUES
//=========================================

variable::variable(data_type dt,variable_id Id):type{dt},Id{Id}{}
bool variable::data_type_to_be_resolved(){
    return type.data()->type ==data_type_data::type::as_unresolved;
}
void variable::edit_data_type(data_type dt){
    if(!data_type_to_be_resolved()&& dt!=type){
        std::cout << "error cannot change data type of variable with non auto data type; error at line:"<< __LINE__ << " file: "<< __FILE__ <<"\n";
    }
    type =dt;
}
void variable::edit_unresolved_data_type(data_type dt){
    if(!data_type_to_be_resolved()&& dt!=type){
        return;
    }
    type =dt;
}



variable* make_global_variable(data_type dt){
    variable result(dt,ir.variable_allocator.size());
    ir.variable_allocator.push_back(result);
    variable* res = &ir.variable_allocator.back();
    ir.global_variables.contained_vars.emplace(res->Id);
    return res;
}
variable* make_variable(data_type dt){
    variable result(dt,ir.variable_allocator.size());
    ir.variable_allocator.push_back(result);
    variable* res = &ir.variable_allocator.back();
    ir.current_definition->local_variables.contained_vars.emplace(res->Id);
    return res;
}



value::value(variable_expression var):var{var}{
    val_kind = value_kind::variable_expression;
}
value::value(literal lit):lit{lit}{
    val_kind = value_kind::literal;
}
value::value(){
    val_kind = value_kind::to_be_resolved;
}
value::value(variable* var_ptr):var{variable_expression(var_ptr)}{
    val_kind = value_kind::variable_expression;
}
data_type& value::get_data_type(){
    switch(val_kind){
        case value_kind::literal:
            return lit.data_type;
        case value_kind::variable_expression:
            return var.var->type;
        
    }
    std::cout<<"error at line: " << __LINE__ << "file: " << __FILE__ <<"\n";
    std::terminate();
}


std::vector<value> arg_list_record;

argument_list::argument_list(std::initializer_list<value> arg_list):start{arg_list_record.size()},size{0}{
    
    for(auto arg:arg_list){
        arg_list_record.push_back(arg);
        size+=1;
    }
}
argument_list::argument_list(std::size_t size){
    start=arg_list_record.size();
    this->size=size;
    for(std::size_t i=0;i<size;i++){
        arg_list_record.push_back(value());
    }

}
argument_list::argument_list(){
    start=0;
    size=0;
}

value& argument_list::operator[](std::size_t idx){
    if(idx>=size){
        std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
        std::terminate();
        return arg_list_record[size-1];
    }
    return arg_list_record[start+idx];

}
std::vector<data_type> argument_list::get_data_types(){
    std::vector<data_type> type_args;
    for(int i =0;i<size;i++){
        value a = this->operator[](i);
        switch(a.val_kind){
            case value_kind::literal:
                type_args.push_back(a.lit.data_type);
                break;
            case value_kind::variable_expression:
                type_args.push_back(a.var.var->type);
                break;
            default:
                std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
                break;
        }
    }
    return type_args;
}

















    

//========================================
// Creating/Adding instructions to the IR
//=========================================

instruction::instruction(instruction_kind::set* set ){
    data_as_set_instruction=set;
    instruction_type=instruction_type::set;
}
instruction::instruction(instruction_kind::operation* operation ){
    data_as_operation_instruction = operation;
    instruction_type=instruction_type::operation;
}
instruction::instruction(instruction_kind::return_instruction*ri ){
    data_as_return_instruction =ri;
    instruction_type=instruction_type::return_instruction;
};
void instruction::require_instruction_type(ir::instruction_type it) const{
    if(instruction_type!= it){
        std::cout << "error requiring an instruction type failed" <<"error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
        std::terminate();
    }
}
instruction_kind::set* instruction::as_set_instruction() const{
    require_instruction_type(instruction_type::set);
    return data_as_set_instruction;
}
instruction_kind::operation* instruction::as_operation_instruction() const{
    require_instruction_type(instruction_type::operation);
    return data_as_operation_instruction;
}
instruction_kind::return_instruction* instruction::as_return_instruction() const{
    require_instruction_type(instruction_type::return_instruction);
    return data_as_return_instruction;
}



namespace make_instruction{
instruction set_instruction(variable * result_var,operation src_expression){
    instruction_kind::set * result= new instruction_kind::set();
    result->result_var=result_var;
    result->operation=src_expression;
    return instruction(result);

}

instruction operation_instruction(operation op){
    return instruction(new operation(op));
} 
}


void add_ir_instruction(instruction un){
        ir.current_definition->instructions.push_back(un);
    }
   
void set_variable_to_operation(ir::variable* result_var,ir::operation op){
    add_ir_instruction(make_instruction::set_instruction(result_var,op));
}

void set_variable_to_function_call(ir::variable* result_var,ir::function_call fc){
        set_variable_to_operation(result_var,new function_call(fc));
}
    

void execute_operation(operation op){
    add_ir_instruction(make_instruction::operation_instruction(op));
}

void execute_function_call(function_call fcall){
    execute_operation(ir::operation(new function_call(fcall)));
}

void literal_to_var(literal lit,ir::variable* result_var){
    unresolved_data_type udt;
    switch (lit.lit_type)
    {
        case ir::literal_type::intager_literal:
            udt = unresolved_data_type::unresolved_int;
            break;
        case ir::literal_type::float_literal:
            udt=unresolved_data_type::unresolved_float;
            break;
        case ir::literal_type::string_literal:
            udt =unresolved_data_type::unresolved_string;
            break;
        default:
            std::cout << "error at line: " << __LINE__ << " file: "<<__FILE__ << "\n";
            break;
    }
    data_type dt(ir::get_unresolved_data_type(udt));
    result_var->edit_data_type(dt);
  

}

literal make_literal(std::string_view d, literal_type lt,data_type dt){
    literal result;
    result.lit_type=lt;
    result.value=d;
    result.data_type = dt;
    return result;
    
}


function_call make_function_call(function* f,argument_list arg_list){
    function_call fc;
    fc.arg_list=arg_list;
    fc.function=f;
    return fc;
    
}



void declare_var(std::string_view name, ir::data_type dt){
    
    ir::variable* var=ir::make_variable(dt);
    variable_record&curren_record=ir.current_definition->local_variables;
    if(curren_record.variables.contains(name)){
        std::cout << "redeclaration of variable with name: "<<name<<" error at line " << __LINE__ << " in file: " << __FILE__ << "\n";
        std::terminate();
    }
    curren_record.variables[name]=var;
    curren_record.names[var->Id]=name;
}

void declare_global_var(std::string_view name, ir::data_type dt){
    ir::variable* var=ir::make_global_variable(dt);
    ir.global_variables.variables[name]=var;
    ir.global_variables.names[var->Id]=name;
}
ir::variable* get_variable_by_name(std::string_view var){
    if(ir.current_definition->local_variables.variables.contains(var)){
        return ir.current_definition->local_variables.variables.at(var);
    }
    if(ir.global_variables.variables.contains(var)){
        return ir.global_variables.variables.at(var);
    }
    std::cout << "no variable with name:"<<var<<" error at line " << __LINE__ << " in file: " << __FILE__ << "\n";
    std::terminate();
    return ir::make_variable(ir::get_data_type("void"));
}
std::string get_variable_name(ir::variable* v){
    if(ir.global_variables.contained_vars.contains(v->Id)){
        if(ir.global_variables.names.contains(v->Id)) return "@"+std::string(ir.global_variables.names[v->Id]);
        return "@#var" + std::to_string(v->Id);
    }
    else if(ir.current_definition->local_variables.contained_vars.contains(v->Id)){
        if(ir.current_definition->local_variables.names.contains(v->Id)) return "%"+std::string(ir.current_definition->local_variables.names[v->Id]);
        return "%var#"+ std::to_string(v->Id);
    }

    std::cout <<"error at line " << __LINE__ <<"file: "<< __FILE__;
    std::terminate();
    }





void InitIR(){
    init_bultin_data_types();

}




//===============================================
//Printing The IR
//=================================================

#if 1
std::stringstream ir_output;

void PrintLiteral(literal lit){
    ir_output << "(";
    switch(lit.lit_type){
        case literal_type::float_literal:
        case literal_type::intager_literal:
          ir_output << lit.value;
          break;
        case literal_type::string_literal:
            ir_output << "\"" << lit.value << "\"";
            break;
        
    }
    ir_output << ": " << lit.data_type.data()->name <<") ";
}
void PrintIRValue(ir::value val){
    switch(val.val_kind){
        case ir::value_kind::variable_expression:
            ir_output << "(" << ((val.var.is_being_dereferenced)?"*":"") << ir::get_variable_name(val.var.var) << ": " << val.var.var->type.data()->name<< ") ";
            break;
        case ir::value_kind::literal:
            PrintLiteral(val.lit);
            break;

    }
}

void PrintIrArgumentList(ir::argument_list a){
    for(uint64_t i = 0;a.size>i;i++){
        PrintIRValue(a[i]);
        ir_output << ",";
    }
}

void PrintIRFunctionCall(function_call fc){
    ir_output << fc.function->name << "(";
    PrintIrArgumentList(fc.arg_list);
    ir_output << ") ";
}

void PrintIRBinaryOperation(builtin_function binop){
    PrintIRValue(binop.binary_left());
    switch (binop.type)
    {
        case builtin_function_type::add:
            ir_output << "+ ";
            break;
        case builtin_function_type::subtract:
            ir_output << "- ";
            break;
        case builtin_function_type::multiply:
            ir_output << "* ";
            break;
        default:
            ir_output << "uniplemented_builtin_function ";
    }
    PrintIRValue(binop.binary_right());
}

void PrintIRBuiltinFunction(builtin_function bf){
    if(bf.type== builtin_function_type::print){
        ir_output << "print(";
        PrintIrArgumentList(bf.arg_list);
        ir_output<<")";
        return;

    }
    PrintIRBinaryOperation(bf);
}

void PrintOperation(operation op){
    switch(op.operation_type){
        case operation_type::call:
            ir_output << "call ";
            PrintIRFunctionCall(*op.as_function_call());
            break;
        case operation_type::value:
            ir_output << "value ";
            PrintIRValue(*op.as_value());
            break;
        case operation_type::builtin_function:
            PrintIRBuiltinFunction(*op.as_builtin_function());
            break;
    }
}

void PrintIrSetInstruction(instruction_kind::set* set_instruction){
    variable* result_var = set_instruction->result_var;
    ir_output << "set (" << get_variable_name(result_var) <<": " <<result_var->type.data()->name <<  ") to ";
    PrintOperation(set_instruction->operation);
    ir_output << "\n";
}
void PrintIRFunctionDefinition(function_definition*fndef){
    ir.current_definition=fndef;
    ir_output << "lvars: ";
    for(auto&i:ir::ir.current_definition->local_variables.contained_vars){
        variable*cv =&ir::ir.variable_allocator[i];
        ir_output <<"("<< ir::get_variable_name(cv)<<":"<<cv->type.data()->name<<"), ";
    }
    ir_output << "\n";
    for(const auto& a:(ir.current_definition->instructions)){
        switch (a.instruction_type)
        {
            case instruction_type::set:
                PrintIrSetInstruction(a.as_set_instruction());
                break;
            case instruction_type::operation:
                PrintOperation(*a.as_operation_instruction());
                ir_output << "\n";
                break;
            case instruction_type::return_instruction:
                ir_output << "return " << get_variable_name(a.as_return_instruction()->returned_var) <<"\n";
                
        }

        
    }
}
void PrintIR(){
    



    std::cout << "glvars: ";
    for(auto&i:ir::ir.global_variables.contained_vars){
        ir::variable* cv  = &ir::ir.variable_allocator[i];
        std::cout <<"("<< ir::get_variable_name(cv)<<":"<<cv->type.data()->name<<"), ";
    }
    std::cout << "\n\n";
    for(auto&[name,fnlist]:ir::ir.function_record){
       for(auto&i:fnlist){
            if(i.definition!=nullptr){
                ir.current_definition=i.definition;
                std::cout <<"fn:"<< name << "(";
                for(auto&a:i.definition->params){
                    std::cout << "(" << get_variable_name(a) << ":" << a->type.data()->name << "), ";
                }
                std::cout << "):\n";
                PrintIRFunctionDefinition(i.definition);
                for(std::string line;std::getline(ir::ir_output,line);){
                    std::cout << "\t" <<line<<"\n";
                }
                std::cout << "\n";
                ir_output.str("");
                ir_output.clear();

            }
       } 
    }


    ir::PrintIRFunctionDefinition(ir::ir.entry_point);
    std::cout << "#entry_point:\n";
    
    for(std::string line;std::getline(ir::ir_output,line);){
        std::cout << "\t" <<line<<"\n";
    }
    ir_output.str("");
    ir_output.clear();
    
}
#endif



}







//====================================
// IR GENERATOR
//====================================

namespace ir_generator{

bool is_leaf_node(ast::node* a){
    return (a->argument_list.size)==0;
}

enum class builtin_function{
    add,
    subtract,
    positive,
    negative,
    divide,
    multiply,

    print
};


 

ir::value convert_ast_value_node(ast::node* inp){
    

     ir::literal result;
    if(inp->type==ast::node_type::integer_literal){
       result.lit_type=ir::literal_type::intager_literal;
       result.value=inp->name;
       result.data_type = ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int);
       return ir::value(result);
    }
    if(inp->type==ast::node_type::float_literal){
       result.lit_type=ir::literal_type::float_literal;
       result.value=inp->name;
       result.data_type = ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_float);
       return ir::value(result);
    }
    if(inp->type==ast::node_type::string_literal){
       result.lit_type=ir::literal_type::string_literal;
       result.value=inp->name;
       result.data_type = ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_string);
       return ir::value(result);
    }
    if(inp->type==ast::node_type::variable_identifier){
        return ir::value(ir::get_variable_by_name(inp->name));
    }

    std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
    std::terminate();
    return ir::value();
}

void convert_ast_expression(ast::node* result,ir::variable* result_var);
ir::argument_list convert_ast_argument_list(ast::node* node){
    ir::argument_list a(node->argument_list.size);

    for(std::size_t i=0;i<node->argument_list.size;i++){
        ast::node*&iterated=node->arg_at(i);
        if(iterated->is_value_node()){
            a[i] = convert_ast_value_node(iterated);
            continue;
        }
        ir::variable* rvar =ir::make_variable(ir::get_unresolved_data_type(ir::unresolved_data_type::any));
        convert_ast_expression(iterated,rvar);
        a[i]=rvar;
        
    }
    return a;
}

builtin_function convert_ast_builtin_function(std::string_view name){
    static std::unordered_map<std::string_view,builtin_function> convertion_record{{"print",builtin_function::print}};
    return convertion_record.at(name);
}

ir::operation convert_to_builtin_function(builtin_function bopt,ast::node*builtin_function){
    ir::builtin_function_type bft;
    ir::argument_list a;
    switch(bopt){
        case builtin_function::add:
            bft=ir::builtin_function_type::add;
            a = convert_ast_argument_list(builtin_function);
            break;
        case builtin_function::subtract:
            bft=ir::builtin_function_type::subtract;
            a = convert_ast_argument_list(builtin_function);
            break;
        case builtin_function::multiply:
            bft=ir::builtin_function_type::multiply;
            a =convert_ast_argument_list(builtin_function); 
            break;
        case builtin_function::divide:
            bft=ir::builtin_function_type::divide;
            a =convert_ast_argument_list(builtin_function); 
            break;
        case builtin_function::positive:
            {
                bft=ir::builtin_function_type::add;
                a = convert_ast_argument_list(builtin_function);
                if(a.size!=1){
                    std::cout << "error at line: " << __LINE__ << " file: " << __FILE__ << "\n";
                }
                ir::value left = ir::value(ir::make_literal("0",ir::literal_type::intager_literal,ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int)));
                a= ir::argument_list{left,a[0]};
                break;
            }
        case builtin_function::negative:
            {
                bft=ir::builtin_function_type::subtract;
                a = convert_ast_argument_list(builtin_function);
                if(a.size!=1){
                    std::cout << "error at line: " << __LINE__ << " file: " << __FILE__ << "\n";
                }
                ir::value left = ir::value(ir::make_literal("0",ir::literal_type::intager_literal,ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int)));
                a= ir::argument_list{left,a[0]};
            }
            break;
        case builtin_function::print:
            bft=ir::builtin_function_type::print;
            a=convert_ast_argument_list(builtin_function);
            break;
        default:
            std::cout << "error at line:" << __LINE__ << " file: " << __FILE__ << "\n";
        break;
    }
    


    ir::builtin_function bop= ir::make_builtin_function(bft,a);
    return ir::operation(new ir::builtin_function(bop));

}


void set_to_builtin_function(builtin_function bopt,ir::variable* result_var,ast::node*builtin_function){
    ir::operation op =convert_to_builtin_function(bopt,builtin_function);
    ir::set_variable_to_operation(result_var,op);
    ir::argument_list a = op.as_builtin_function()->arg_list;
    if(result_var->data_type_to_be_resolved() && result_var->type.data()->as_unresolved==ir::unresolved_data_type::any){
        if(a[0].get_data_type()==ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int)&&a[1].get_data_type()==ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int)){
            result_var->edit_data_type(ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int));
        }
    }

}

void execute_builtin_function(builtin_function bopt,ast::node*builtin_function){
    ir::execute_operation(convert_to_builtin_function(bopt,builtin_function));
}



void convert_to_ir_function(std::string_view fn, ir::variable* result_var,ast::node* function){
    ir::argument_list a = convert_ast_argument_list(function);
    std::vector<ir::data_type> arg_types = a.get_data_types();
    ir::function_call fc= ir::make_function_call(ir::get_function(fn,arg_types),a);
    for(int i = 0;fc.arg_list.size>i;i++){
        ir::data_type dt =fc.function->parameters[i];
        fc.arg_list[i].get_data_type()=dt;
    }
    ir::set_variable_to_function_call(result_var,fc);  
    result_var->edit_unresolved_data_type(fc.function->return_type);
    

}

void convert_ast_expression(ast::node* inp,ir::variable*result_var){

    if(inp->family==ast::node_family::operation){

        if(inp->type == ast::node_type::function_call){
            convert_to_ir_function(inp->name,result_var,inp);
        }
        else if(inp->type==ast::node_type::builtin_function_call){

        }

        else if(inp->type==ast::node_type::addition){
            set_to_builtin_function(builtin_function::add,result_var,inp);
        }
        else if(inp->type==ast::node_type::subtraction){
            set_to_builtin_function(builtin_function::subtract,result_var,inp);
        }
        else if(inp->type==ast::node_type::multiplication){
            set_to_builtin_function(builtin_function::multiply,result_var,inp);
        }
        else if(inp->type==ast::node_type::division){
            set_to_builtin_function(builtin_function::divide,result_var,inp);
        }



        else if(inp->type==ast::node_type::positive){
            set_to_builtin_function(builtin_function::positive,result_var,inp);
        }
        else if(inp->type==ast::node_type::negative){
            set_to_builtin_function(builtin_function::negative,result_var,inp);
        }
    }
    else if(inp->is_value_node()){
        ir::value* val=  new ir::value(convert_ast_value_node(inp));
        if(val->get_data_type().data()->type==ir::data_type_data::type::as_unresolved) val->get_data_type()=result_var->type;
        ir::operation op =  (val);
        ir::set_variable_to_operation(result_var,op);
    }


}


void convert_ast_statement(ast::node* node){
    if(node->type==ast::node_type::assigment){
        ast::node* left =node->binary_left();
        ast::node* right = node->binary_right();
        if(left->type==ast::node_type::variable_identifier){
            ir::variable*result_variable =ir::get_variable_by_name(left->name);
            convert_ast_expression(node->binary_right(),result_variable);

        }
        else if(left->type==ast::node_type::variable_declaration){
            std::string_view result_var_name = left->binary_right()->name;
            std::string_view result_var_data_type_name =left->binary_left()->name;

            if(ir::in_entry_point()) ir::declare_global_var(result_var_name,ir::get_data_type(result_var_data_type_name));
            else ir::declare_var(result_var_name,ir::get_data_type(result_var_data_type_name));

            ir::variable*result_variable =ir::get_variable_by_name(result_var_name);
            convert_ast_expression(right,result_variable);

        }
    }
    else if(node->type==ast::node_type::variable_declaration){
        if(ir::in_entry_point()) ir::declare_global_var(node->binary_right()->name,ir::get_data_type(node->binary_left()->name));
        else ir::declare_var(node->binary_right()->name,ir::get_data_type(node->binary_left()->name));
    }
    else if(node->family==ast::node_family::operation){
        if(node->type==ast::node_type::function_call){
            ir::argument_list a = convert_ast_argument_list(node);
            std::vector<ir::data_type> arg_types = a.get_data_types();
            ir::function*fn = ir::get_function(node->name,arg_types);
            for(uint32_t i=0;a.size>i;i++){
                a[i].get_data_type()=fn->parameters[i];
            }
            ir::execute_function_call(ir::make_function_call(fn,a));
        }
        else if(node->type==ast::node_type::builtin_function_call){
            execute_builtin_function(convert_ast_builtin_function(node->name),node);
        }
        else{
            //operations without side effects are pointless to execute
            return;
        }
    }
    else if(node->type==ast::node_type::return_instruction){
        ir::instruction_kind::return_instruction r;

        r.returned_var=ir::make_variable(ir::ir.current_definition->return_type);
        convert_ast_expression(node->unary_operand(),r.returned_var);
        ir::instruction i(new ir::instruction_kind::return_instruction(r));
        ir::add_ir_instruction(i);
    }
    else if(node->family==ast::node_family::literal) {
        //standalone literals have no effect
    }
    else if(node->type==ast::node_type::variable_identifier){
        //standalone variable identifiers have no effect
    }
    else{
        std::cout <<"error at line " << __LINE__ << "file " << __FILE__ <<"\n";
        convert_ast_expression(node,ir::make_variable(ir::get_builtin_data_type(ir::builtin_data_type::void_data_type)));
    }
}

std::vector<ir::data_type> get_function_param_types(const ast::function_declaration& i){
    std::vector<ir::data_type> arguments;
        for(auto a:i.argument_list){
            if(a->type!=ast::node_type::variable_declaration){
                std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            }
            arguments.push_back(ir::get_data_type(a->arg_at(0)->name));

        }
        if(i.return_type->type!=ast::node_type::data_type){
                std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            }
    return arguments;
}
std::vector<std::pair<std::string_view,ir::data_type>> get_function_params(const ast::function_declaration&i){
    std::vector<std::pair<std::string_view,ir::data_type>> arguments;
        for(auto a:i.argument_list){
            if(a->type!=ast::node_type::variable_declaration){
                std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            }
            arguments.emplace_back(a->binary_right()->name,ir::get_data_type(a->arg_at(0)->name));

        }
        if(i.return_type->type!=ast::node_type::data_type){
                std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            }
    return arguments;
}
void pass_function_daclarations(){
    for(const auto& i:ast::ast.function_declarations){
        std::vector<ir::data_type> arguments=get_function_param_types(i);
        ir::data_type return_type = ir::get_data_type(i.return_type->name);
        ir::declare_function(i.name,return_type,arguments);
    }
}
void convert_function_definitions(){
    for(auto&i:ast::ast.function_definitions){
        std::vector<ir::data_type> param_types = get_function_param_types(i.declaration_data);
        ir::function* fn = ir::get_function(i.declaration_data.name,param_types);
        if(fn->return_type!=ir::get_data_type(i.declaration_data.return_type->name)) std::terminate();
        ir::function_definition* ir_fndef=ir::make_function_definition();
        ir::ir.current_definition=ir_fndef;
        ir_fndef->return_type=fn->return_type;
        fn->definition=ir_fndef;

        std::vector<std::pair<std::string_view,ir::data_type>> param_data = get_function_params(i.declaration_data);
        for(auto&[name,dt]:param_data){
            ir::declare_var(name,dt);
            ir_fndef->params.push_back(ir::get_variable_by_name(name));
        }
        
        for(uint32_t a=0;i.function_body->argument_list.size>a;a++){
            convert_ast_statement(i.function_body->arg_at(a));
        }
        
        

    }
}
void print_fn_declarations(){
    for(const auto&[name,declaration_list]:ir::ir.function_record){
        for(auto& declaration:declaration_list){
            std::cout << "fn:"<<declaration.return_type.data()->name << " "<<declaration.name<<"(";       
            for(auto&data_type_arg:declaration.parameters){
                std::cout << data_type_arg.data()->name << " ,";
            }
            std::cout << ")\n";
            
        }
        std::cout << "\n";
    }
}

void resolve_data_types(){
    //determinating, dependent
    static std::vector<std::pair<ir::variable*,ir::value*>>dependency_record;
    for(auto b:ir::ir.function_definitions){
        for(auto&i:b->instructions){
            switch (i.instruction_type)
            {
                case ir::instruction_type::set:
                    ir::variable* determinating_var = i.as_set_instruction()->result_var;
                    ir::operation op = i.as_set_instruction()->operation;
                    switch(op.operation_type){
                        case ir::operation_type::builtin_function:
                            if (op.as_builtin_function()->arg_list.size == 2){
                                dependency_record.push_back(std::make_pair(determinating_var,&op.as_builtin_function()->binary_left()));
                                dependency_record.push_back(std::make_pair(determinating_var,&op.as_builtin_function()->binary_right()));
                            }

                    }
            }
        }
    }
    auto reverse_view = std::ranges::reverse_view(dependency_record);
    for(auto&[determinating,dependent]:reverse_view){
        if(dependent->get_data_type().data()->type==ir::data_type_data::type::as_unresolved) dependent->get_data_type()=determinating->type;
    }
}


void generate_ir(){
    ir::InitIR();
    pass_function_daclarations();

    ir::ir.entry_point=ir::make_function_definition();
    ir::ir.current_definition=ir::ir.entry_point;
    for(auto i:ast::ast.global_nodes){
           convert_ast_statement(i);
    }

    convert_function_definitions();
    ir::ir.current_definition=ir::ir.entry_point;
    //ir::execute_operation(ir::make_function_call());
    bool hasmain= false;
    if(ir::ir.function_record.contains("main")){
        if(ir::ir.function_record.at("main").size()==1){
            for(auto i: ir::ir.function_record.at("main")){
                if( i.parameters.size()==0&&i.definition!=nullptr){
                 hasmain=true;
                }
        }
        }
    }

    if(hasmain){
        ir::execute_function_call(ir::make_function_call(ir::get_function("main",{}),ir::argument_list()));
    }
    else{
        std::cout <<"main missing";
    }
    resolve_data_types();
    print_fn_declarations();
    ir::PrintIR();
    exec_ir();
    
}



}