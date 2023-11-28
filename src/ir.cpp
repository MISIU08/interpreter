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
namespace ir{
struct data_type_data;
struct instruction;
struct data_type;
struct variable;
typedef uint64_t variable_id;
typedef uint32_t function_id;
struct function;

struct quartix_ir{

    std::deque<variable> variable_allocator;
    std::unordered_map<std::string_view,ir::variable*> variable_record;
    std::unordered_map<variable_id,std::string_view> variable_name_record;
    std::vector<data_type_data> data_type_record;
    std::vector<ir::instruction> ir_data;
    std::unordered_map<std::string_view,data_type> data_type_name_record;
    std::unordered_map<std::string_view,std::deque<function>> function_record;
    
};

quartix_ir ir;



struct data_type_data;
typedef uint32_t data_type_id;
struct data_type;
struct function_call;
class value;
enum class builtin_data_type:uint8_t{
    i8,
    i16,
    i32,
    i64,
    u8,
    u16,
    u32,
    u64,
    f32,
    f64,
    string,
    void_data_type,
    

};
enum class unresolved_data_type{
    unresolved_string,
    unresolved_float,
    unresolved_int,
    any

};






struct builtin_function;

//===========================================
//Implementation for IR operations
//===========================================

enum class operation_type{
    builtin_function,
    call,
    value,
    alloca,



};

namespace operation_kind{
    typedef ir::builtin_function builtin_function;
    typedef ir::value value;
    typedef ir::function_call call;
};

struct operation{
    operation(function_call *fc){
        operation_data = (void(*)) fc;
        operation_type = ir::operation_type::call;

    }
    operation(value* val){
        operation_data = (void(*))val;
        operation_type = ir::operation_type::value;
    }
    operation(builtin_function* bop){
        operation_data = (void(*))bop;
        operation_type = ir::operation_type::builtin_function;
    }
    operation(){}
    operation_type operation_type;
    void* operation_data;
    operation_kind::call*as_function_call(){
        if(operation_type!=ir::operation_type::call){
            std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            std::terminate();
        }
        return (operation_kind::call(*))operation_data;
    }
    operation_kind::value*as_value(){
        if(operation_type!=ir::operation_type::value){
            std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            std::terminate();
        }
        return (operation_kind::value(*))operation_data;
    }

    operation_kind::builtin_function*as_builtin_function(){
        if(operation_type!=ir::operation_type::builtin_function){
            std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            std::terminate();
        }
        return (operation_kind::builtin_function(*))operation_data;
    }
    
};











//================================================
// DATA TYPES
//=====================================================



data_type get_builtin_data_type(builtin_data_type bdt);
data_type get_unresolved_data_type(unresolved_data_type udt);
struct data_type{
    data_type(data_type_id typeId){
        TypeId=typeId;
    }
    data_type(){
        *this=get_unresolved_data_type(unresolved_data_type::any);
    }
    bool operator==(const data_type&comp) const{
        return comp.TypeId==TypeId;
    }
    data_type_id TypeId;
    data_type_data* data() const{
        if(TypeId>=ir.data_type_record.size()){
            std::cout << "error at line: " << __LINE__ << " in file: "<<__FILE__ << "\n";   
            std::terminate();   
            }
        return &ir.data_type_record[TypeId];
    }
};

struct data_type_data{
    data_type_data(){}
    
    enum class type{
        as_builtin,
        as_struct,
        as_typedef,
        as_unresolved
    };
    type type;
    std::string_view name;
    union{
    builtin_data_type as_builtin;
    std::span<data_type> as_struct;
    data_type as_typedef;
    unresolved_data_type as_unresolved;
  
    };

};


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




struct function{
    std::string_view name;
    data_type return_type;
    std::vector<data_type> parameters;
};
void declare_function(std::string_view name,data_type return_type,std::vector<data_type> arguments){
    function fd;
    fd.name =name;
    fd.parameters = arguments;
    fd.return_type = return_type;
    ir.function_record[name].push_back(fd);
}   
std::vector<builtin_data_type> int_conversion_record{builtin_data_type::i32,builtin_data_type::i8,builtin_data_type::i16,builtin_data_type::i64};

bool type_can_be_set_to_type(const data_type dt2,const data_type dt1){
    if(dt1.data()->type==data_type_data::type::as_unresolved){
        if(dt1.data()->as_unresolved==unresolved_data_type::unresolved_int){
            for(auto i:int_conversion_record){
                if(dt2.data()->as_builtin==i){
                    return true;
                    }
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
    return nullptr;
}






class instruction;
struct literal;


struct variable{
    variable(data_type dt,variable_id Id):type{dt},Id{Id}{}
    bool data_type_to_be_resolved(){
        return type.data()->type ==data_type_data::type::as_unresolved;
    }
    void edit_data_type(data_type dt){
        if(!data_type_to_be_resolved()&& dt!=type){
            std::cout << "error cannot change data type of variable with non auto data type; error at line:"<< __LINE__ << " file: "<< __FILE__ <<"\n";
        }
        type =dt;
    }
    data_type type;
    variable_id Id;
    
};

struct variable_expression{
    variable* var;
    bool is_being_dereferenced;
};


variable* make_variable(data_type dt){
    variable result(dt,ir.variable_allocator.size());
    ir.variable_allocator.push_back(result);
    return &ir.variable_allocator.back();
}

enum class literal_type:uint8_t{
        float_literal,
        intager_literal,
        string_literal
};
struct literal{

    std::string_view value;
    literal_type lit_type;
    data_type data_type;

};
enum class value_kind{
    variable_expression,
    literal,
    to_be_resolved
};
class value{
public:
    value(variable_expression var):var{var}{
        val_kind = value_kind::variable_expression;
    }
    value(literal lit):lit{lit}{
        val_kind = value_kind::literal;
    }
    value(){
        val_kind = value_kind::to_be_resolved;
    }
    value(variable* var_ptr):var{variable_expression(var_ptr)}{
        val_kind = value_kind::variable_expression;
    }
    data_type get_data_type(){
        switch(val_kind){
            case value_kind::literal:
                return lit.data_type;
            case value_kind::variable_expression:
                return var.var->type;
            
        }
        return get_unresolved_data_type(unresolved_data_type::any);
    }
    value_kind val_kind;
    union{
        variable_expression var;
        literal lit;
    };

};
std::vector<value> arg_list_record;
struct argument_list{
    argument_list(std::initializer_list<value> arg_list):start{arg_list_record.size()},size{0}{
        
        for(auto arg:arg_list){
            arg_list_record.push_back(arg);
            size+=1;
        }
    }

    argument_list(std::size_t size){
        start=arg_list_record.size();
        this->size=size;
        for(std::size_t i=0;i<size;i++){
            arg_list_record.push_back(value());
        }

    }
    argument_list(){
        start=0;
        size=0;
    }

    value& operator[](std::size_t idx){
        if(idx>=size){
            std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            return arg_list_record[size-1];
        }
        return arg_list_record[start+idx];

    }
    std::vector<data_type> get_data_types(){
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
    uint64_t start;
    std::size_t size;
}; 



struct function_call{
    ir::function* function;
    argument_list arg_list;
};



enum class builtin_function_type{
    add,
    subtract,
    multiply,
    divide,
    compare,
    logical_and,    
};


struct builtin_function{

    builtin_function_type type;
    argument_list arg_list;
    value& binary_left(){
        return arg_list[0];
    }
    value& binary_right(){
        return arg_list[1];
    }

};

builtin_function make_builtin_function(builtin_function_type type,value left,value right){
    builtin_function result;
    result.type=type;
    result.arg_list =argument_list(2);
    result.binary_left() = left;
    result.binary_right() = right;
    return result;
}

enum class instruction_type{
    declare,
    define,
    set,
    operation,
};
namespace instruction_kind{
    struct set{
        variable* result_var;
        operation operation;

    };
    typedef ir::operation operation;

};
class instruction{
public:
    void*data;
    instruction_type instruction_type;
    instruction(instruction_kind::set* set ){
        data = (void(*))set;
        instruction_type=instruction_type::set;
    }
    instruction(instruction_kind::operation* operation ){
        data = (void(*))operation;
        instruction_type=instruction_type::operation;
    }

    instruction_kind::set* as_set_instruction() const{
        if(instruction_type!=instruction_type::set){
            std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            std::terminate();
        }
        return (instruction_kind::set(*))data;
    }
    instruction_kind::operation* as_operation_instruction() const{
        if(instruction_type!=instruction_type::operation){
            std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
            std::terminate();
        }
        return (instruction_kind::operation(*))data;
    }
};









//========================================
// Creating/Adding instructions to the IR
//=========================================

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
        ir.ir_data.push_back(un);
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
    ir.variable_record[name]=var;
    ir.variable_name_record[var->Id]=name;
}
ir::variable* get_variable_by_name(std::string_view var){
    if(ir.variable_record.contains(var)){
        return ir.variable_record.at(var);
    }
    std::cout << "no variable with name:"<<var<<" error at line " << __LINE__ << " in file: " << __FILE__ << "\n";
    std::terminate();
    return ir::make_variable(ir::get_data_type("void"));
}
std::string get_variable_name(ir::variable* v){
    if(ir.variable_name_record.contains(v->Id)){
        return std::string(ir.variable_name_record[v->Id]);
    }
    std::string a = "@var";
    std::string result =a+std::to_string(v->Id);
    
    return result;
    }





void InitIR(){
    init_bultin_data_types();

}




//===============================================
//Printing The IR
//=================================================

#if 1
void PrintLiteral(literal lit){
    std::cout << "(";
    switch(lit.lit_type){
        case literal_type::float_literal:
        case literal_type::intager_literal:
          std::cout << lit.value;
          break;
        case literal_type::string_literal:
            std::cout << "\"" << lit.value << "\"";
            break;
        
    }
    std::cout << ": " << lit.data_type.data()->name <<") ";
}
void PrintIRValue(ir::value val){
    switch(val.val_kind){
        case ir::value_kind::variable_expression:
            std::cout << "(" << ((val.var.is_being_dereferenced)?"*":"") << ir::get_variable_name(val.var.var) << ": " << val.var.var->type.data()->name<< ") ";
            break;
        case ir::value_kind::literal:
            PrintLiteral(val.lit);
            break;

    }
}
void PrintIRFunctionCall(function_call fc){
    std::cout << fc.function->name << "(";
    for(uint64_t i = fc.arg_list.start; i<fc.arg_list.size+fc.arg_list.start ;i++){
        ir::value current_value =ir::arg_list_record[i];
        PrintIRValue(current_value);
        if((i+1<fc.arg_list.size+fc.arg_list.start)){
                    std::cout << ", ";
        }
        }
            std::cout << ") ";
}

void PrintIRBinaryOperation(builtin_function binop){
    PrintIRValue(binop.binary_left());
    switch (binop.type)
    {
        case builtin_function_type::add:
            std::cout << "+ ";
            break;
        case builtin_function_type::subtract:
            std::cout << "- ";
            break;
        default:
            std::cout << "uniplemented_builtin_function ";
    }
    PrintIRValue(binop.binary_right());
}

void PrintOperation(operation op){
    switch(op.operation_type){
        case operation_type::call:
            std::cout << "call ";
            PrintIRFunctionCall(*op.as_function_call());
            break;
        case operation_type::value:
            std::cout << "value ";
            PrintIRValue(*op.as_value());
            break;
        case operation_type::builtin_function:
            PrintIRBinaryOperation(*op.as_builtin_function());
            break;
    }
}

void PrintIrSetInstruction(instruction_kind::set* set_instruction){
    variable* result_var = set_instruction->result_var;
    std::cout << "set (" << get_variable_name(result_var) <<": " <<result_var->type.data()->name <<  ") to ";
    PrintOperation(set_instruction->operation);
    std::cout << "\n";
}
void PrintIR(){
    for(const auto& a:(ir.ir_data)){
        switch (a.instruction_type)
        {
            case instruction_type::set:
                PrintIrSetInstruction(a.as_set_instruction());
                break;
            case instruction_type::operation:
                PrintOperation(*a.as_operation_instruction());
                std::cout << "\n";
                break;
        }

        
    }
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
    multiply
};


 
void resolve_data_types(){
    
}

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

void convert_to_builtin_function(builtin_function bopt,ir::variable* result_var,ast::node*builtin_function){
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
        case builtin_function::positive:
            {
                bft=ir::builtin_function_type::add;
                a = convert_ast_argument_list(builtin_function);
                if(a.size!=0){
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
                if(a.size!=0){
                    std::cout << "error at line: " << __LINE__ << " file: " << __FILE__ << "\n";
                }
                ir::value left = ir::value(ir::make_literal("0",ir::literal_type::intager_literal,ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int)));
                a= ir::argument_list{left,a[0]};
            }
            break;
        default:
            std::cout << "error at line:" << __LINE__ << " file: " << __FILE__ << "\n";
        break;
    }
    
    if(a.size!=2){
        std::cout << "error at line: "<< __LINE__<< " in file:"<< __FILE__ << "\n";
        std::terminate();
    }

    ir::builtin_function bop= ir::make_builtin_function(bft,a[0],a[1]);
    ir::set_variable_to_operation(result_var,ir::operation(new ir::builtin_function(bop)));
    
    if(result_var->data_type_to_be_resolved() && result_var->type.data()->as_unresolved==ir::unresolved_data_type::any){
        if(a[0].get_data_type()==ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int)&&a[1].get_data_type()==ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int)){
            result_var->edit_data_type(ir::get_unresolved_data_type(ir::unresolved_data_type::unresolved_int));
        }
    }

}



void convert_to_ir_function(std::string_view fn, ir::variable* result_var,ast::node* function){
    ir::argument_list a = convert_ast_argument_list(function);
    std::vector<ir::data_type> arg_types = a.get_data_types();
    ir::function_call fc= ir::make_function_call(ir::get_function(fn,arg_types),a);
    ir::set_variable_to_function_call(result_var,fc);  
    result_var->edit_data_type(fc.function->return_type);
    

}

void convert_ast_expression(ast::node* inp,ir::variable*result_var){

    if(inp->family==ast::node_family::operation){

        if(inp->type == ast::node_type::function_call){
            convert_to_ir_function(inp->name,result_var,inp);
        }

        else if(inp->type==ast::node_type::addition){
            convert_to_builtin_function(builtin_function::add,result_var,inp);
        }
        else if(inp->type==ast::node_type::subtraction){
            convert_to_builtin_function(builtin_function::subtract,result_var,inp);
        }
        else if(inp->type==ast::node_type::multiplication){
            convert_to_builtin_function(builtin_function::multiply,result_var,inp);
        }
        else if(inp->type==ast::node_type::division){
            convert_to_builtin_function(builtin_function::divide,result_var,inp);
        }



        else if(inp->type==ast::node_type::positive){
            convert_to_builtin_function(builtin_function::positive,result_var,inp);
        }
        else if(inp->type==ast::node_type::negative){
            convert_to_builtin_function(builtin_function::negative,result_var,inp);
        }
    }
    else if(inp->is_value_node()){
        ir::set_variable_to_operation(result_var,ir::operation(new ir::value(convert_ast_value_node(inp))));
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
            ir::declare_var(result_var_name,ir::get_data_type(result_var_data_type_name));
            ir::variable*result_variable =ir::get_variable_by_name(result_var_name);
            convert_ast_expression(right,result_variable);

        }
    }
    else if(node->type==ast::node_type::variable_declaration){
        ir::declare_var(node->binary_right()->name,ir::get_data_type(node->binary_left()->name));
    }
    else{
        convert_ast_expression(node,ir::make_variable(ir::get_builtin_data_type(ir::builtin_data_type::void_data_type)));
    }
}

void pass_function_daclarations(){
    for(const auto i:ast::ast.function_declarations){
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
        ir::data_type return_type = ir::get_data_type(i.return_type->name);
        ir::declare_function(i.name,return_type,arguments);
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

void generate_ir(){
    ir::InitIR();
    pass_function_daclarations();
    for(auto i:ast::ast.global_nodes){
           convert_ast_statement(i);
    }
    print_fn_declarations();
    
    ir::PrintIR();
}



}