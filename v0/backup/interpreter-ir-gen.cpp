#include <iostream>
#include <string>
#include <vector>
#include <list>
#include <cstdlib>
#include <tuple>
#include <algorithm>
#include <unordered_set>
#include <cstddef>
#include <cctype>
#include <charconv>
#include <type_traits>
#include <unordered_map>
//void* operator new(std::size_t count){
//    std::cout << "   " << count << " bytes" << std::endl;
//    return malloc(count);
//}


template <typename T>
std::vector<T> create_vec(){
    std::vector<T> a;
    return a;
}


namespace interpreter{
typedef double T;








#if 0

#endif
namespace eval{





#if 0
//Executes number operations

T ExecuteOperation(operations operation,T FirstNum,T SecondNum){
    switch(operation){
        case operations::add:
            //std::cout << FirstNum << " + " << SecondNum<<" = " << FirstNum +SecondNum << "\n";
            return FirstNum + SecondNum;
        case operations::subtract:
            //std::cout << FirstNum << " - " << SecondNum<<" = " << FirstNum -SecondNum << "\n";
            return FirstNum -SecondNum;
        case operations::multiply:
            //std::cout << FirstNum << " * " << SecondNum<<" = " << FirstNum *SecondNum << "\n";
            return FirstNum *SecondNum;
        case operations::divide:
            //std::cout << FirstNum << " / " << SecondNum<<" = " << FirstNum /SecondNum << "\n";
            if(SecondNum==0){
                std::cout << "E: cannot divide by 0";
                return 0;
            }
            return FirstNum /SecondNum;
        case operations::equality_chek:
            //std::cout << FirstNum << " == " << SecondNum<<" = " << std::to_string(FirstNum ==SecondNum) << "\n";
            return FirstNum == SecondNum;
        case operations::logical_and:
            //std::cout << FirstNum << " && " << SecondNum<<" = " << std::to_string(FirstNum &&SecondNum) << "\n";
            return FirstNum && SecondNum;
        case operations::logical_or:
            return FirstNum || SecondNum;
        case operations::not_equal:
            return FirstNum!=SecondNum;
        default:
            std::cout << "Evaulation error at : "<< __LINE__ << "\n"; 
            return 0;
    }
};

#endif
template <typename output_type>
output_type to_num(std::string_view input){
    output_type result;
    auto fc_result = std::from_chars(input.data(), input.data() + input.size(), result);
    if (fc_result.ec == std::errc::invalid_argument) {
        std::cout << "Could not convert. interpreter line:" << __LINE__ << "\n";
    }
    return result;
}
T ExecuteFunctionCall(std::string_view function_name,T value){
    if (function_name == "pow2"){
        return value *value;
    }
    else if(function_name == "neg"){
        return -value;
    }
    return value;
}




}
//PARSER
//PARSER
//PARSER
//PARSER
//PARSER
//PARSER
namespace parser{

enum class operations: uint8_t{
    add = 0,
    subtract,
    multiply,
    divide,
    equality_chek,
    logical_and,
    logical_or,
    not_equal
    
};
enum class parser_value_type:uint8_t{
    numeric_literal,
    float_literal,
    string_literal,
    variable,

};
struct parser_value{
    parser_value_type type;
    std::string_view value;
};

struct StatementDataStruct{
    std::vector<uint32_t> RelationPriority;
    std::vector<parser_value> Values;
    std::vector<operations> Operations;

    //function call id, index of value
    std::vector<std::tuple<uint32_t,uint32_t>> functionInsiders;

    //the value is the name of the function call id
    std::vector<std::string_view> function_call_IDs;
    uint64_t statement_count;

    //list telling in witch function a function call is inside    
    std::vector<uint32_t> parent_function_call_list;

    std::vector<uint32_t> function_call_priority;  
};




namespace ir_generator{
std::string_view operator_to_char(operations a){
    switch(a){
        case operations::add:
            return "+";
        case operations::subtract:
            return "-";
        case operations::multiply:
            return "*";
        case operations::divide:
            return "/";
        case operations::equality_chek:
            return "==";
        case operations::logical_and:
            return "&&";
        case operations::logical_or:
            return "||";
        case operations::not_equal:
            return "!=";

    }
    std::cout << "interpreter error, cannot convert operator to char form, at line: " << __LINE__ << ", in file: " << __FILE__;
     return " ";
}


namespace ir{
uint64_t Last_ir_variable_id=0;
uint64_t Last_ir_operation_id =0;
//std::vector<std::string_view> operation_list;
//std::vector<std::string_view> variable_list;
std::unordered_map<uint8_t,uint64_t> operator_id_record;
std::unordered_map<std::string_view,uint64_t> function_id_record;
std::unordered_map<uint64_t,std::string_view> ir_operation_data;



uint64_t add_operation_to_operation_descriptor_record(std::string_view name= "<no name>"){
    ir_operation_data[Last_ir_operation_id] =name;
    Last_ir_operation_id+=1;
    return Last_ir_operation_id-1;
}

struct operation_descriptor{
    uint64_t ID;
};

operation_descriptor get_operators_ir_operation_descriptor(operations op){
    operation_descriptor result;
    if(operator_id_record.contains(uint8_t(op))){
        result.ID=operator_id_record.at(uint8_t(op));
    }
    else{
        operator_id_record[uint8_t(op)]= add_operation_to_operation_descriptor_record(operator_to_char(op));
        result.ID=operator_id_record.at(uint8_t(op));
    }
    
    return result;
}

operation_descriptor get_functions_ir_operation_descriptor(std::string_view function_name)
{
    operation_descriptor result;
    if(function_id_record.contains(function_name)){
        result.ID=function_id_record.at(function_name);
    }
    else{
        function_id_record[function_name]=add_operation_to_operation_descriptor_record(function_name);
        result.ID=function_id_record.at(function_name);
    }
    return result;
}

struct variable_descriptor{
    uint64_t ID;
};
variable_descriptor create_ir_variable_descriptor(){
    variable_descriptor result;
    result.ID=Last_ir_variable_id;
    Last_ir_variable_id++;
    return result;
}

std::vector<variable_descriptor> arg_list_record;
struct argument_list{
    argument_list(std::initializer_list<variable_descriptor> arg_list):start{arg_list_record.size()},size{0}{
        
        for(auto arg:arg_list){
            arg_list_record.push_back(arg);
            size+=1;
        }
    }
    uint64_t start;
    std::size_t size;
}; 


struct unit{
    variable_descriptor result_variable;
    operation_descriptor operation;
    argument_list arg_list;

};
}

std::vector<ir::unit> ir_data;

void PrintIR(){
    for(const auto& a:ir_data){
        std::cout << "var"<< a.result_variable.ID << " = " << ir::ir_operation_data[a.operation.ID] << "(";
        for(uint64_t i = a.arg_list.start; i<a.arg_list.size+a.arg_list.start ;i++){
            std::cout <<"var"<< ir::arg_list_record[i].ID ;

            if((i+1<a.arg_list.size+a.arg_list.start)){
                std::cout << ", ";
            }
        }
        std::cout << ") \n";
    }
}

struct NumProcHelp{
    NumProcHelp(ir::variable_descriptor val):value{val},replacer{UINT32_MAX},function_call_id{UINT32_MAX}{

    }
    ir::variable_descriptor value;
    uint32_t replacer;
    uint32_t function_call_id;
};
//Claculates Number expressions witch are preprocessed by the interpreter function
void EvaluateStatement(const StatementDataStruct& StatementData){
//    std::cout << "interpreter function\n";
    if(StatementData.Values.size()== 1){
        ir::variable_descriptor var=ir::create_ir_variable_descriptor();
        if(StatementData.functionInsiders.size()>0){
            for(auto functionName:StatementData.function_call_IDs){
                ir::operation_descriptor function_descriptor = ir::get_functions_ir_operation_descriptor(functionName);
                ir::argument_list arg_list ={var};
                ir_data.emplace_back(var,function_descriptor,arg_list);
                //result=eval::ExecuteFunctionCall(functionName,result);
            }
        }
        
        return;
    }
    std::vector<NumProcHelp> Numbers;
    Numbers.reserve(StatementData.Values.size());

    for(const parser_value i:StatementData.Values){
        //T result = 0;
        //if(i.type==parser_value_type::numeric_literal||i.type == parser_value_type::float_literal){
            //result = eval::to_num<T>(i.value);
        //}

        Numbers.push_back(ir::create_ir_variable_descriptor());
    }
    for(auto[call_id,ValIdx]:StatementData.functionInsiders){
        Numbers[ValIdx].function_call_id=call_id;
    }
    for(uint32_t i=0;i<StatementData.RelationPriority.size();i++){
        //const uint32_t idx:StatementData.RelationPriority
        const uint32_t idx =StatementData.RelationPriority[i];
        uint32_t FirstNumIdx = idx;
        while(true){
            if(Numbers[FirstNumIdx].replacer != UINT32_MAX){
                FirstNumIdx = Numbers[FirstNumIdx].replacer;
            }
            else{
                break;
            }
        }

        uint32_t SecondNumIdx = idx+1;
        while(true){
            if(Numbers[SecondNumIdx].replacer != UINT32_MAX){
                SecondNumIdx = Numbers[SecondNumIdx].replacer;
            }
            else{
                break;
            }
        }

        operations operation =StatementData.Operations[idx];
        ir::variable_descriptor FirstNum =Numbers[FirstNumIdx].value;
        ir::variable_descriptor SecondNum = Numbers[SecondNumIdx].value;
        while(Numbers[FirstNumIdx].function_call_id!=Numbers[SecondNumIdx].function_call_id){
            NumProcHelp& firstNum=Numbers[FirstNumIdx];
            NumProcHelp& secondNum=Numbers[SecondNumIdx];
            uint32_t firtstNumPriority = 0;
            uint32_t secondNumPriority = 0;
            if(firstNum.function_call_id!=UINT32_MAX){
                firtstNumPriority = StatementData.function_call_priority[firstNum.function_call_id];
            }
            if(secondNum.function_call_id!=UINT32_MAX){
                secondNumPriority = StatementData.function_call_priority[secondNum.function_call_id];
            }
            if(firstNum.function_call_id!=UINT32_MAX &&secondNumPriority <= firtstNumPriority ){
                    std::string_view function_name = StatementData.function_call_IDs[firstNum.function_call_id];
                    //std::cout << "calling "<<function_name<<" on value: " << firstNum.value << " at index: " << FirstNumIdx << "\n";
                    ir::operation_descriptor function_descriptor = ir::get_functions_ir_operation_descriptor(function_name);
                    ir::argument_list arg_list={FirstNum};
                    ir_data.emplace_back(FirstNum,function_descriptor,arg_list);
                    //FirstNum = eval::ExecuteFunctionCall(function_name,FirstNum);
                    firstNum.function_call_id = StatementData.parent_function_call_list[firstNum.function_call_id];
                    

            }
             
            if(secondNum.function_call_id!=UINT32_MAX && firtstNumPriority<=secondNumPriority){
                
                    std::string_view function_name = StatementData.function_call_IDs[secondNum.function_call_id];
                    //std::cout << "calling "<< function_name<<" on value: " << secondNum.value << " at index: " << SecondNumIdx << "\n";
                    ir::operation_descriptor function_descriptor = ir::get_functions_ir_operation_descriptor(function_name);
                    ir::argument_list arg_list={SecondNum};
                    ir_data.emplace_back(SecondNum,function_descriptor,arg_list);
                    //SecondNum= eval::ExecuteFunctionCall(function_name,SecondNum);
                    secondNum.function_call_id = StatementData.parent_function_call_list[secondNum.function_call_id];
                
             }
             
            
            if(secondNum.function_call_id==UINT32_MAX&&firstNum.function_call_id==UINT32_MAX){
                break;
            }
            
            

            
        }
        ir::operation_descriptor operator_descriptor = ir::get_operators_ir_operation_descriptor(operation);
        ir::argument_list arg_list = {FirstNum,SecondNum};
        ir_data.emplace_back(FirstNum,operator_descriptor,arg_list);

        //Result = eval::ExecuteOperation(operation,FirstNum,SecondNum);
        //Numbers[FirstNumIdx].value = Result;
        Numbers[SecondNumIdx].replacer = FirstNumIdx;

        if(idx+1==StatementData.RelationPriority.size()){
            if(Numbers[FirstNumIdx].function_call_id!=UINT32_MAX){
                if(Numbers[FirstNumIdx].function_call_id!=UINT32_MAX){
                    auto function_call_id = Numbers[FirstNumIdx].function_call_id;
                    while(true){
                        ir::variable_descriptor var_descriptor = Numbers[FirstNumIdx].value;
                        ir::operation_descriptor function_descriptor = ir::get_functions_ir_operation_descriptor(StatementData.function_call_IDs[function_call_id]);
                        ir::argument_list arg_list = {var_descriptor};
                        ir_data.emplace_back(var_descriptor,function_descriptor,arg_list);
                        
                        //Result=eval::ExecuteFunctionCall(StatementData.function_call_IDs[function_call_id],Result);
                        function_call_id = StatementData.parent_function_call_list[function_call_id];
                        if(function_call_id==UINT32_MAX){
                            break;
                        }
                    }
                }
            }
        }

    }
   
    
}

}











thread_local StatementDataStruct StatementData;

//start, end, priority, name(if function)
thread_local std::vector<std::tuple<uint32_t,uint32_t,uint32_t>> parentesis_data;
thread_local std::vector<uint32_t> parentesis_record;
thread_local uint32_t parentesis_priority = 0;

struct function_temp_data{
    std::string_view name;
    uint32_t parenthesis_data_idx;
    uint32_t priority;
    uint32_t function_call_id;
};
thread_local std::vector<function_temp_data> temp_data_of_functions;


enum class token : uint8_t {
    addition = 0,
    subtraction,
    multiplication,
    division,
    equality_check,
    logical_and,
    logical_or,
    not_equal,

    equals,
    opening_parenthesis,
    closing_parenthesis,
    separator,
    end_of_file,
    scope_beginning,
    scope_ending,

    variable_declaration,
    variable_identifier,
    function_call,
    string_literal,
    numeric_literal,
    float_literal,

};

//index =select function, value = function call id of parent function


thread_local std::vector<std::tuple<uint32_t,uint32_t>> tempFunctionInsiders;

void find_function_args(std::vector<std::tuple<uint32_t,uint32_t,uint32_t>>& parentesis_data){

    StatementData.function_call_IDs.clear();
    tempFunctionInsiders.clear();
    for(uint32_t i=0;i<temp_data_of_functions.size();i++){

        auto&[name,par_data_idx,priority,function_call_id]=temp_data_of_functions[i];
        auto[beg,end,ParPriority]=parentesis_data[par_data_idx];
        priority=ParPriority;
        StatementData.function_call_priority.push_back(priority);
        
        StatementData.function_call_IDs.push_back(name);
        uint32_t id = StatementData.function_call_IDs.size()-1;
        function_call_id=id;
        if(i!=0 && priority!=0){
            uint32_t idx = i;
            while(true){
                idx--;
                auto par_at_idx=temp_data_of_functions[idx];
                if(par_at_idx.priority<priority){
                    StatementData.parent_function_call_list.push_back(par_at_idx.function_call_id);
                    break;
                }
            }
        }else{
            StatementData.parent_function_call_list.push_back(UINT32_MAX);
        }

        for(uint32_t i = beg+1;i<end+1;i++){
            tempFunctionInsiders.emplace_back(id,i-1);
        }
        }
        
    std::sort(temp_data_of_functions.begin(), temp_data_of_functions.end(), [&](function_temp_data a,function_temp_data b) {
        return a.priority>b.priority;
        });

    //for(auto[name,pos]:temp_data_of_functions){   std::cout<<"value at position: " <<pos <<"  is inside function with name: "<<StatementData.function_call_IDs[name]<<" and with id: "<< name<<"\n";}
    std::unordered_set<uint32_t> fseen;

    //TO REDO
    for(auto[name,par_data_idx,priority,fcid]:temp_data_of_functions){
        for(int fidx=0;fidx<tempFunctionInsiders.size();fidx++){
            auto[fNameIdx,vId]=tempFunctionInsiders[fidx];
            if(fNameIdx==fcid){
                if(fseen.find(vId)==fseen.end()){
                    fseen.insert(vId);
                    StatementData.functionInsiders.push_back(tempFunctionInsiders[fidx]);
                }
            }
        }
    }
    std::sort(StatementData.functionInsiders.begin(), StatementData.functionInsiders.end(), [&](std::tuple<uint32_t,uint32_t> a,std::tuple<uint32_t,uint32_t> b) {
        auto[aa,idxA]=a;
        auto[bb,idxB]=b;
        return idxA<idxB;
        });
    
    

}

//Temporary vectors containing a list of  multiplictions and divisions
thread_local std::vector<uint32_t> temp_P0_vec;
thread_local std::vector<uint32_t> temp_P1_vec;
thread_local std::vector<uint32_t> temp_P2_vec;
thread_local std::vector<uint32_t> temp_AS_vec;
thread_local std::vector<uint32_t> temp_MD_vec;

thread_local std::vector<uint32_t> FindOutOperationProrityResults;
//finds out the order of operations

thread_local std::vector<uint32_t> FindOutOperationProrityResult;



std::vector<uint32_t>& postprocess_statement(StatementDataStruct& StatementData, std::vector<std::tuple<uint32_t,uint32_t,uint32_t>>& parentesis_data){
    find_function_args(parentesis_data);
    

    //Finds out a priority to each operation
    //Temporary vectors containing a list of  multiplictions and divisions
    std::vector<uint32_t>& results = FindOutOperationProrityResults;
    std::unordered_set<uint32_t> seen;
    

    FindOutOperationProrityResult.reserve(50);
    temp_P0_vec.reserve(10);
    temp_P1_vec.reserve(10);
    temp_P2_vec.reserve(10);
    temp_AS_vec.reserve(50);
    temp_MD_vec.reserve(50);
    temp_P0_vec.clear();
    temp_P1_vec.clear();
    temp_P2_vec.clear();
    temp_AS_vec.clear();    
    temp_MD_vec.clear();
    //
    //std::cout << "relation priority reserving ended\n";
    auto push_to_op_vec = [&](operations op, uint32_t i){
        switch (op)
        {
            case operations::add :
                temp_AS_vec.push_back(i);
                break;
            case operations::subtract:
                temp_AS_vec.push_back(i);
                break;
            case operations::multiply:
                temp_MD_vec.push_back(i);
                break;
            case operations::divide:
                temp_MD_vec.push_back(i);
                break;
            case operations::equality_chek:
                temp_P2_vec.push_back(i);
                break;
            case operations::not_equal:
                temp_P2_vec.push_back(i);
                break;
            case operations::logical_and:
                temp_P1_vec.push_back(i);
                break;
            case operations::logical_or:
                temp_P0_vec.push_back(i);
                break;
            default:
                std::cout << "\ninterpreter error: at line:"<<__LINE__<<"   in file:"<<__FILE__ <<"   "<< "<uknown_operator"<<"\n";
                break;
        }
    };
    auto push_temp_vecs_to_result = [&](){
       

        
        for(auto i:temp_MD_vec){

            FindOutOperationProrityResult.push_back(i);
        }
        for(auto i:temp_AS_vec){

            FindOutOperationProrityResult.push_back(i);

        }
        for(auto i:temp_P2_vec){

            FindOutOperationProrityResult.push_back(i);
        }
        for(auto i:temp_P1_vec){

            FindOutOperationProrityResult.push_back(i);
        }

         for(auto i:temp_P0_vec){

            FindOutOperationProrityResult.push_back(i);
        }
        temp_P0_vec.clear();
        temp_P1_vec.clear();
        temp_P2_vec.clear();
        temp_AS_vec.clear();
        temp_MD_vec.clear();


    };
    std::sort(parentesis_data.begin(), parentesis_data.end(), [](std::tuple<uint32_t,uint32_t,uint32_t> a, std::tuple<uint32_t,uint32_t,uint32_t> b) {
        auto&[aita,aitb,priorityA] = a;
        auto&[bita,bitb,priorityB] = b;
        return priorityA > priorityB;

    });
    for(auto[start,end,priority]:parentesis_data){
        if(start!=end&&end!=UINT32_MAX){
        for(uint32_t i=start+1;i!=end;i++){
            if(!(StatementData.Operations.size()<i)){
                if (seen.find(i-1) == seen.end()) {
                seen.insert(i-1);
            
                operations op = StatementData.Operations[i-1];
                push_to_op_vec(op,i-1);
                }
                }
            }
        push_temp_vecs_to_result();
        }
        else{
            if(end==UINT32_MAX){
                std::cout << "syntax error: a parentesis was not terminated"<<"\n";
            }
        }

    }
    int start = 0;
    int end = StatementData.Operations.size()-1;


    for (int i = start; i <= end; i++) {
        if (seen.find(i) == seen.end()) {
        operations op = StatementData.Operations[i];
        push_to_op_vec(op,i);
        }
    }
    push_temp_vecs_to_result();
    //FindOutOperationProrityResult = removeDuplicates<uint32_t>(FindOutOperationProrityResult);
    return FindOutOperationProrityResult;

};










#pragma region //process token
template<token tok>
void process_token(){
    std::cout <<"token unimplemented or suplied with wrong arguments\n";
}


template<token tok>
void process_token(std::string_view inp){
    std::cout <<"token unimplemented or suplied with wrong arguments\n";
}

template<>
void process_token<token::addition>(){
    StatementData.Operations.push_back(operations::add);
    if (StatementData.Operations.size() != StatementData.Values.size()){
        std::cout << "invalid syntax\n";
        goto stop;
    }
    stop:;
}

template<>
void process_token<token::subtraction>(){
    StatementData.Operations.push_back(operations::subtract);
    if (StatementData.Operations.size() != StatementData.Values.size()){
        std::cout << "invalid syntax\n";
        goto stop;
    }
    stop:;
}

template<>
void process_token<token::multiplication>(){
    StatementData.Operations.push_back(operations::multiply);
    if (StatementData.Operations.size() != StatementData.Values.size()){
        std::cout << "invalid syntax\n";
        goto stop;
    }
    stop:;
}


template<>
void process_token<token::division>(){
    StatementData.Operations.push_back(operations::divide);
    if (StatementData.Operations.size() != StatementData.Values.size()){
        std::cout << "invalid syntax\n";
        goto stop;
    }
    stop:;
}


template<>
void process_token<token::equality_check>(){
    StatementData.Operations.push_back(operations::equality_chek);
    if (StatementData.Operations.size() != StatementData.Values.size()){
        std::cout << "invalid syntax\n";
        goto stop;
    }
    stop:;
}


template<>
void process_token<token::logical_and>(){

    StatementData.Operations.push_back(operations::logical_and);
    if (StatementData.Operations.size() != StatementData.Values.size()){
        std::cout << "invalid syntax\n";
        goto stop;
    }
    stop:;
}

template<>
void process_token<token::logical_or>(){

    StatementData.Operations.push_back(operations::logical_or);
    if (StatementData.Operations.size() != StatementData.Values.size()){
        std::cout << "invalid syntax\n";
        goto stop;
    }
    stop:;
}



template<>
void process_token<token::not_equal>(){
    StatementData.Operations.push_back(operations::not_equal);
    if (StatementData.Operations.size() != StatementData.Values.size()){
        std::cout << "invalid syntax\n";
        goto stop;
    }
    stop:;
}



template<>
void process_token<token::opening_parenthesis>(){
    parentesis_data.emplace_back(StatementData.Values.size(),UINT32_MAX,parentesis_priority);
    parentesis_record.emplace_back(parentesis_data.size()-1);
    parentesis_priority++;
    stop:;
}



template<>
void process_token<token::closing_parenthesis>(){
    parentesis_priority--;
    auto&[first,last,priority]= parentesis_data.at(parentesis_record.back());
    last = StatementData.Values.size();
    parentesis_record.pop_back();
    stop:;
}



template<>
void process_token<token::equals>(){
    
    stop:;
}



template<>
void process_token<token::separator>(){
    if(StatementData.Values.size()-1==StatementData.Operations.size()){
    StatementData.statement_count++;
    StatementData.RelationPriority = postprocess_statement(StatementData,parentesis_data);}
    else{
        std::cout<<"syntax error: an operator isn't mached with a value\n";
    }
    stop:;
}



template<>
void process_token<token::end_of_file>(){
    process_token<token::separator>();
    //std::cout << "end_of_file\n";
    
    stop:;
}



template<>
void process_token<token::scope_beginning>(){
    std::cout << "scope_beginning\n";
    stop:;
}



template<>
void process_token<token::scope_ending>(){
     std::cout << "scope_ending\n";
    stop:;
}



template<>
void process_token<token::variable_declaration>(std::string_view inp){
    
    stop:;
}



template<>
void process_token<token::variable_identifier>(std::string_view token_value){
    StatementData.Values.emplace_back(parser_value_type::variable,token_value);
    //std::cout << "variable_identifier: "<<token_value<<"\n";
    stop:;
}

template<>
void process_token<token::function_call>(std::string_view token_value){
    //std::cout << "function_call: "<<token_value <<"\n";
    temp_data_of_functions.emplace_back(token_value,parentesis_data.size());
    stop:;
}



template<>
void process_token<token::string_literal>(std::string_view token_value){
    StatementData.Values.emplace_back(parser_value_type::string_literal,token_value);
    std::cout << "string_literal: \""<<token_value <<"\"\n";
    stop:;
}


template<>
void process_token<token::numeric_literal>(std::string_view token_value){
    //std::cout << "numeric literal: "<<token_value<<"\n";
    StatementData.Values.emplace_back(parser_value_type::numeric_literal,token_value);    
    stop:;
}

template<>
void process_token<token::float_literal>(std::string_view token_value){
    //std::cout << "float_literal\n";
    StatementData.Values.emplace_back(parser_value_type::float_literal,token_value);
    stop:;
}
#pragma endregion



void init(){
    StatementData.Values.reserve(50);
    StatementData.Operations.reserve(50);
    StatementData.functionInsiders.reserve(10);
    parentesis_record.reserve(50);

    parentesis_data.reserve(50);
    parentesis_priority = 0;
}

}








//LEXER
//LEXER 
//LEXER
//LEXER
//LEXER
//LEXER
//LEXER
namespace lexer{
using parser::token;

thread_local int idx = 0;

void report_error(std::string_view errormsg){
    std::cout<< "lexing error: : " << errormsg << "\n";
}

bool char_is_not_special(char i){
    return i!='+'&&i!='-'&&i!='*'&&i!='/'&&i!='='&&i!='&'&&i!='|'&&i!='('&&i!=')'&&i!=';'&&i!='{'&&i!='}'&&i!=' '&&i!='\n'&&i!='\0'&&i!='"';
}


static auto const &get_keyword_list(){
    static std::unordered_map<std::string_view,void(*)(void)> keyword_list={
        {"and",parser::process_token<token::logical_and>},
        {"or",parser::process_token<token::logical_or>},
        {"builtin::add",parser::process_token<token::addition>},
        {"builtin::subtract",parser::process_token<token::subtraction>},
        {"builtin::multiply",parser::process_token<token::multiplication>},
        {"builtin::divide",parser::process_token<token::division>},
        {"builtin::not_equal",parser::process_token<token::not_equal>}


    };
    return keyword_list;
    }

bool look_for_and_handle_keyword(std::string_view name){
    static auto& keyword_list = get_keyword_list();
    void(*keyword_handler)(void);
    try{
        keyword_handler= keyword_list.at(name);
    }catch(const std::out_of_range& ex){
        return false;
    }
    keyword_handler();
    return true;
}







thread_local std::string_view input;
//interpreter function
//interpreter function
//interpreter function
//interpreter function
void Interpret(std::string_view input_arg){
    input =input_arg;
    parser::init();

    


    for(;idx<input.size();idx++){
        char i= input[idx];
        switch(i){
            case ' ':
                break;


            case '+':
                
                parser::process_token<token::addition>();
                break;
            case '-':
                parser::process_token<token::subtraction>();
                break;
            case '*':
                parser::process_token<token::multiplication>();
                break;
            case '/':
                parser::process_token<token::division>();
                break;

            case '=':
                if(input[idx+1]== '='){
                    idx++;
                    parser::process_token<token::equality_check>();
                    break;
                }
                break;
            
            case '&':
                if(input[idx+1]== '&'){
                    idx++;
                    parser::process_token<token::logical_and>();
                    break;
                }
                report_error("invalid syntax: to many \" & \" symbols ");
                goto stop;
                break;
            case '|':
                if(input[idx+1]== '|'){
                    idx++;
                    parser::process_token<token::logical_or>();
                    break;
                }
                report_error("invalid syntax: to many \" | \" symbols ");
                goto stop;
                break;


            case '(':
                parser::process_token<token::opening_parenthesis>();
                break;
            case ')':
                parser::process_token<token::closing_parenthesis>(); 
                break;
            case ';':
                parser::process_token<token::separator>();
                break;
            case '{':
                parser::process_token<token::scope_beginning>();
                break;
            case '}':
                parser::process_token<token::scope_ending>();
                break;
            case '\0':
                parser::process_token<token::end_of_file>();
                break;
            case '\n':
                break;
            case '"':
                {
                idx++;
                i = input[idx];
                uint32_t beg = idx;
                while(true){
                    if(i!='\n'&&i!='\0'&& i!='"' ){
                        idx++;
                        i = input[idx];
                    }
                    else{
                        if(i=='\n'||i=='\0'){
                            idx--;
                            report_error("unterminated string literal");
                            goto stop;
                        }
                        break;
                    }
                }
                std::string_view value(input.data() +beg,idx-beg);
                parser::process_token<token::string_literal>(value);
                break;
                }
            default:
                if(isdigit(i)){
                    uint32_t beg = idx;
                    bool dot_found = false;
                    token literal_type = token::numeric_literal;
                    while(true){
                        if(isdigit(input[idx+1])){
                            idx++;
                        }
                        else if(input[idx+1]=='.'){
                            if(!dot_found){
                            idx++;
                            dot_found = true;
                            literal_type = token::float_literal;
                            }
                            else{
                                report_error("invalid syntax in float literal");
                                goto stop;

                            }
                        }
                        else{
                            break;
                        }
                    }
                    
                    std::string_view result(input.data()+beg,idx+1-beg);
                    if(literal_type ==token::numeric_literal){
                        parser::process_token<token::numeric_literal>(result);
                    }
                    else if(literal_type ==token::float_literal){
                        parser::process_token<token::float_literal>(result);
                    }

                    break;
                }
                else{
                    uint32_t beg = idx;
                    uint32_t size;
                    token token_type = token::variable_identifier;
                    idx++;
                    i = input[idx];
                    while(true){
                        if(char_is_not_special(i)){
                            idx++;
                            i = input[idx];
                        }
                        else{
                            while(true){
                                if(i==' '){
                                    
                                    idx++;
                                    i=input[idx];
                                }
                                else{
                                    break;
                                }
                            }
                            if(i=='('){
                                token_type = token::function_call;
                            }
                            size=idx-beg;
                            idx-=1;
                            break;

                        }
                    }
                    std::string_view result(input.data()+beg,size);
                    if(!look_for_and_handle_keyword(result)){
                        if(token_type==token::function_call){
                            parser::process_token<token::function_call>(result);   
                        }
                        if(token_type==token::variable_identifier){
                            parser::process_token<token::variable_identifier>(result);
                        }
                    }
                    
                    break;
                }
                report_error("invalid character");
                break;

        }
    
    }
    parser::process_token<token::end_of_file>();
    parser::ir_generator::EvaluateStatement(parser::StatementData);
    parser::ir_generator::PrintIR();
return;

stop:;
}

}

};

int main(){
    std::string input;
    std::getline(std::cin,input);


    interpreter::lexer::Interpret(input);


    return 0;
}