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

template <typename T>
class interpreter{
public:

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
    end_of_statement,
    end_of_file,
    scope_beginning,
    scope_ending,

    variable_declaration,
    variable_identifier,
    function_call,
    string_literal,
    numeric_literal,
    float_literal
};

class sv{
    public:
    sv(){}
    sv(uint32_t beg_arg,uint8_t size_arg):beg(beg_arg),size(size_arg){

    }
    std::string_view to_string_view(interpreter* base_class_ptr){
        return std::string_view(base_class_ptr->input.data()+beg,size);
    }
    uint32_t beg;
    uint16_t size;

};

std::string operator_to_char(operations a){
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


struct NumExprStruct{
    std::vector<uint32_t> RelationPriority;
    std::vector<T> Values;
    std::vector<operations> Relations;
    
    
    
};


struct NumProcHelp{
    NumProcHelp(T val):value{val},replacer{UINT32_MAX}{

    }
    T value;
    uint32_t replacer;
};

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
            std::cout << "error at : "<< __LINE__ << "\n"; 
            return 0;
    }
};




//Claculates Number expressions witch are preprocessed by the interpreter function

T EvaluateStatement(const NumExprStruct& StatementData){
//    std::cout << "interpreter function\n";
    if(StatementData.Values.size()== 1){
        return StatementData.Values.back();
    }
    std::vector<NumProcHelp> Numbers;
    Numbers.reserve(StatementData.Values.size());
    T Result = 0;

    for(const T i:StatementData.Values){
        Numbers.emplace_back(i);
    }
    for(const uint32_t idx:StatementData.RelationPriority){
        
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

        operations operation =StatementData.Relations[idx];
        T FirstNum =Numbers[FirstNumIdx].value;
        T SecondNum = Numbers[SecondNumIdx].value;
        Result = ExecuteOperation(operation,FirstNum,SecondNum);
        Numbers[FirstNumIdx].value = Result;
        Numbers[SecondNumIdx].replacer = FirstNumIdx;


    }
   
    return Result;
}




//Temporary vectors containing a list of  multiplictions and divisions
std::vector<uint32_t> temp_P0_vec;
std::vector<uint32_t> temp_P1_vec;
std::vector<uint32_t> temp_P2_vec;
std::vector<uint32_t> temp_AS_vec;
std::vector<uint32_t> temp_MD_vec;

std::vector<uint32_t> FindOutOperationProrityResults;
//finds out the order of operations

std::vector<uint32_t> FindOutOperationProrityResult;

std::vector<uint32_t>& postprocess_statement(NumExprStruct& StatementData, std::vector<std::tuple<uint32_t,uint32_t,uint32_t>>& parentesis_data){
    

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
    std::cout << "relation priority reserving ended\n";
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
                std::cout << "\ninterpreter error: at line:"<<__LINE__<<"   in file:"<<__FILE__ <<"   "<< operator_to_char(op)<<"\n";
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
        auto[aita,aitb,priorityA] = a;
        auto[bita,bitb,priorityB] = b;
        return priorityA > priorityB;

    });
    for(auto[start,end,priority]:parentesis_data){
        if(start!=end&&end!=UINT32_MAX){
        for(uint32_t i=start+1;i!=end;i++){
            if(!(StatementData.Relations.size()<i)){
                if (seen.find(i-1) == seen.end()) {
                seen.insert(i-1);
            
                operations op = StatementData.Relations[i-1];
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
    int end = StatementData.Relations.size()-1;


    for (int i = start; i <= end; i++) {
        if (seen.find(i) == seen.end()) {
        operations op = StatementData.Relations[i];
        push_to_op_vec(op,i);
        }
    }
    push_temp_vecs_to_result();
    //FindOutOperationProrityResult = removeDuplicates<uint32_t>(FindOutOperationProrityResult);
    return FindOutOperationProrityResult;

};






template <typename ...Args>
static consteval bool process_token_verify_requirements(){
    if constexpr(sizeof...(Args)==0){
        return true;
    }
    else{
        using FirstArg = std::decay_t<std::tuple_element_t<0, std::tuple<Args...>>>;
        if constexpr(sizeof...(Args) == 1){
                
            if constexpr(std::is_same<FirstArg,sv>()){
                
                return true;
            }
            else{
                return false;
            }
        }
    }
    
}

static std::string_view token_to_str(token token){
    switch (token)
    {
    case token::addition:
        return "addition_token";
    case token::subtraction:
        return "subtraction_token";
    case token::multiplication:
        return "multiplication_token";
    case token::division:
        return "division_token";
    case token::equality_check:
        return "equality_check_token";
    case token::logical_and:
        return "logical_and_token";
    case token::logical_or:
        return "logical_or_token";
    case token::opening_parenthesis:
        return "opening_parenthesis_token";
    case token::closing_parenthesis:
        return "closing_parenthesis_token";
    case token::end_of_statement:
        return "end_of_statement_token";
    case token::end_of_file:
        return "end_of_file_token";
    case token::scope_beginning:
        return "scope_beginning_token";
    case token::scope_ending:
        return "scope_ending_token";
    case token::variable_identifier:
        return "variable_identifier_token";
    case token::function_call:
        return "function_call_token";
    case token::string_literal:
        return "string_literal_token";
    case token::numeric_literal:
        return "numeric_literal_token";
    case token::float_literal:
        return "float_literal_token";
    }
    return "<no name>"; 
}


struct function_data{
    sv name;
    uint32_t parenthesis_data_idx;
};
std::vector<function_data> data_of_functions;
template <token token,typename...Args>
void token_requires_value(){
    if constexpr(sizeof...(Args)==0){
        static_assert(sizeof...(Args)!=0,"the current token requires a value");
        return;
    }
    else return;
}



template<token tok,typename...Args>
void process_token(Args... args){
    static_assert(process_token_verify_requirements<Args...>(),"bad arguments to process_token()");
    sv token_value;
    if constexpr(sizeof...(Args)>0)
        token_value = std::get<0>(std::make_tuple(args...));


    //handle addition token
    if constexpr (tok == token::addition) {
        StatementData.Relations.push_back(operations::add);
        if (StatementData.Relations.size() != StatementData.Values.size()){
            std::cout << "invalid syntax\n";
            goto stop;
        }
    }

    //handle Subtraction token
    else if constexpr (tok == token::subtraction) {
        StatementData.Relations.push_back(operations::subtract);
        if (StatementData.Relations.size() != StatementData.Values.size()){
            std::cout << "invalid syntax\n";
            goto stop;
        }
    }
    else if constexpr (tok == token::multiplication) {
        StatementData.Relations.push_back(operations::multiply);
        if (StatementData.Relations.size() != StatementData.Values.size()){
            std::cout << "invalid syntax\n";
            goto stop;
        }
    }
    else if constexpr (tok == token::division) {
        StatementData.Relations.push_back(operations::divide);
        if (StatementData.Relations.size() != StatementData.Values.size()){
            std::cout << "invalid syntax\n";
            goto stop;
        }
    }
    else if constexpr (tok == token::equality_check) {
        StatementData.Relations.push_back(operations::equality_chek);
        if (StatementData.Relations.size() != StatementData.Values.size()){
            std::cout << "invalid syntax\n";
            goto stop;
        }
    }
    else if constexpr (tok == token::logical_and) {
        idx++;
        StatementData.Relations.push_back(operations::logical_and);
        if (StatementData.Relations.size() != StatementData.Values.size()){
            std::cout << "invalid syntax\n";
            goto stop;
        }
    }
    else if constexpr (tok == token::logical_or) {
        idx++;
        StatementData.Relations.push_back(operations::logical_or);
        if (StatementData.Relations.size() != StatementData.Values.size()){
            std::cout << "invalid syntax\n";
            goto stop;
        }
    }
    else if constexpr (tok == token::not_equal) {
        idx++;
        StatementData.Relations.push_back(operations::not_equal);
        if (StatementData.Relations.size() != StatementData.Values.size()){
            std::cout << "invalid syntax\n";
            goto stop;
        }
    }



    else if constexpr (tok == token::opening_parenthesis) {
        parentesis_data.emplace_back(StatementData.Values.size(),UINT32_MAX,parentesis_priority);
        parentesis_record.emplace_back(parentesis_data.size()-1);
        parentesis_priority++;
    }
    else if constexpr (tok == token::closing_parenthesis) {
        parentesis_priority--;
        auto&[first,last,priority]= parentesis_data.at(parentesis_record.back());
        last = StatementData.Values.size();
        parentesis_record.pop_back();
    }


    else if constexpr(tok==token::equals){

    }

    else if constexpr (tok == token::end_of_statement) {
        if(StatementData.Values.size()-1==StatementData.Relations.size()){
            StatementData.RelationPriority = postprocess_statement(StatementData,parentesis_data);}
        else{
            std::cout<<"syntax error: an operator isn't mached with a value\n";
        }
    }
    else if constexpr (tok == token::end_of_file) {
        std::cout << "end_of_file\n";
    }
    else if constexpr (tok == token::scope_beginning) {
        std::cout << "scope_beginning\n";
    }
    else if constexpr (tok == token::scope_ending) {
        std::cout << "scope_ending\n";
    }


    else if constexpr(tok==token::variable_declaration){
        token_requires_value<tok,Args...>();
    }
    else if constexpr (tok == token::variable_identifier) {
        token_requires_value<tok,Args...>();
        std::cout << "variable_identifier: "<<token_value.to_string_view(this)<<"\n";
    }
    else if constexpr (tok == token::function_call) {
        token_requires_value<tok,Args...>();
        std::cout << "function_call: "<<token_value.to_string_view(this) <<"\n";
        data_of_functions.emplace_back(token_value,parentesis_data.size());
        

    }



    else if constexpr (tok == token::string_literal) {
        token_requires_value<tok,Args...>();
        std::cout << "string_literal: \""<<token_value.to_string_view(this) <<"\"\n";
    }
    else if constexpr (tok == token::numeric_literal) {
        token_requires_value<tok,Args...>();
        std::string_view result_str = token_value.to_string_view(this);
        T result;
        auto fc_result = std::from_chars(result_str.data(), result_str.data() + result_str.size(), result);
        if (fc_result.ec == std::errc::invalid_argument) {
            std::cout << "Could not convert. interpreter line:" << __LINE__ << "\n";
        }
        StatementData.Values.push_back(result);
    }
    else if constexpr (tok == token::float_literal) {
        token_requires_value<tok,Args...>();
        std::cout << "float_literal\n";
        std::string_view result_str = token_value.to_string_view(this);
        T result;
        auto fc_result = std::from_chars(result_str.data(), result_str.data() + result_str.size(), result);
        if (fc_result.ec == std::errc::invalid_argument) {
            std::cout << "Could not convert. interpreter line:" << __LINE__ << "\n";
        }
        StatementData.Values.push_back(result);
    }
stop:
    return;
}

bool char_is_not_special(char i){
    return i!='+'&&i!='-'&&i!='*'&&i!='/'&&i!='='&&i!='&'&&i!='|'&&i!='('&&i!=')'&&i!=';'&&i!='{'&&i!='}'&&i!=' '&&i!='\n'&&i!='\0'&&i!='"';
}


static auto const &get_keyword_list(){
    static std::unordered_map<std::string_view,void(interpreter::*)(void)> keyword_list={
        {"and",process_token<token::logical_and>},
        {"or",process_token<token::logical_or>},
        {"builtin::add",process_token<token::addition>},
        {"builtin::subtract",process_token<token::subtraction>},
        {"builtin::multiply",process_token<token::multiplication>},
        {"builtin::divide",process_token<token::division>},
        {"builtin::not_equal",process_token<token::not_equal>}


    };
    return keyword_list;
    }
bool look_for_and_handle_keyword(std::string_view name){
    static auto& keyword_list = get_keyword_list();
    void(interpreter::*keyword_handler)(void);
    try{
        keyword_handler= keyword_list.at(name);
    }catch(const std::out_of_range& ex){
        return false;
    }
    (*this.*keyword_handler)();
    return true;
}

//variables
//variables
//variables
//variables 
int idx = 0;
NumExprStruct StatementData;
std::string_view input;

//start, end, priority
std::vector<std::tuple<uint32_t,uint32_t,uint32_t>> parentesis_data;

std::vector<uint32_t> parentesis_record;
uint32_t DM_idx;
uint32_t parentesis_priority = 0;




//interpreter function
//interpreter function
//interpreter function
//interpreter function
std::pair<T,NumExprStruct> Interpret(std::string_view input_arg){
    input =input_arg;
    temp_AS_vec.reserve(50);
    temp_MD_vec.reserve(50);
    StatementData.Values.reserve(50);
    StatementData.Relations.reserve(50);
    parentesis_record.reserve(50);
    
    DM_idx=0;
    parentesis_data.reserve(50);
    parentesis_priority = 0;
    


    for(;idx<input.size();idx++){
        char i= input[idx];
        switch(i){
            case ' ':
                break;


            case '+':
                process_token<token::addition>();
                break;
            case '-':
                process_token<token::subtraction>();
                break;
            case '*':
                process_token<token::multiplication>();
                break;
            case '/':
                process_token<token::division>();
                break;

            case '=':
                if(input[idx+1]== '='){
                    process_token<token::equality_check>();
                    break;
                }
                break;
            
            case '&':
                if(input[idx+1]== '&'){
                    process_token<token::logical_and>();
                    break;
                }
                std::cout << "invalid syntax\n";
                goto stop;
                break;
            case '|':
                if(input[idx+1]== '|'){
                    process_token<token::logical_or>();
                    break;
                }
                std::cout << "invalid syntax\n";
                goto stop;
                break;


            case '(':
                process_token<token::opening_parenthesis>();
                break;
            case ')':
                process_token<token::closing_parenthesis>(); 
                break;
            case ';':
                process_token<token::end_of_statement>();
                break;
            case '{':
                process_token<token::scope_beginning>();
                break;
            case '}':
                process_token<token::scope_ending>();
                break;
            case '\0':
                process_token<token::end_of_file>();
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
                            std::cout << "syntax error: unterminated string literal"<<"\n";
                            goto stop;
                        }
                        break;
                    }
                }
                sv value(beg,idx-beg);
                process_token<token::string_literal>(value);
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
                                std::cout << "syntax error: to many dots in float expression";
                                goto stop;

                            }
                        }
                        else{
                            break;
                        }
                    }
                    
                    sv result(beg,idx+1);
                    if(literal_type ==token::numeric_literal){
                        process_token<token::numeric_literal>(result);
                    }
                    else if(literal_type ==token::float_literal){
                        process_token<token::float_literal>(result);
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
                    sv result(beg,size);
                    if(!look_for_and_handle_keyword(result.to_string_view(this))){
                        if(token_type==token::function_call){
                            process_token<token::function_call>(result);   
                        }
                        if(token_type==token::variable_identifier){
                            process_token<token::variable_identifier>(result);
                        }
                    }
                    
                    break;
                }
                std::cout << "invalid character\n";
                break;

        }
    
    }

return std::pair<T,NumExprStruct>(EvaluateStatement(StatementData),StatementData);

stop:

    return std::pair<T,NumExprStruct>(0,StatementData);

}



};

int main(){
    std::string input;
    std::getline(std::cin,input);

    interpreter<double> i;
    auto [result,StatementData] = i.Interpret(input);
    std::cout << result << "\n";

    return 0;
}