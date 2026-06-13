#include <iostream>
#include <string>
#include <vector>
#include <list>
#include <cstdlib>
#include <tuple>
#include <algorithm>
#include <cstddef>
#include <cctype>
#include <charconv>

#include <unordered_map>

#include "lexer.h"


//LEXER
//LEXER 
//LEXER
//LEXER
//LEXER
//LEXER
//LEXER
namespace lexer{
thread_local std::vector<token> token_list;




void add_token(token_type tok_type, std::string_view lexem = ""){
    token_list.emplace_back(tok_type,lexem);
}

thread_local int idx = 0;

void report_error(std::string_view errormsg){
    std::cout<< "lexing error: : " << errormsg << "\n";
}

bool char_is_not_special(char i){
    return i!='+'&&i!='-'&&i!='*'&&i!='/'&&i!='='&&i!='&'&&i!='|'&&i!='('&&i!=')'&&i!=';'&&i!='{'&&i!='}'&&i!=' '&&i!='\t' &&i!='\n'&&i!='\0'&&i!='"'&&i!=',';
}


struct keyword_data{
    void(*handler)(token_type,std::string_view);
    token_type inp;
    std::string_view name;

};
static auto const &get_keyword_list(){
    static std::unordered_map<std::string_view,keyword_data> keyword_list={
        {"and",{add_token,token_type::logical_and,""}},
        {"or",{add_token,token_type::logical_or,""}},
        {"builtin::add",{add_token,token_type::addition,""}},
        {"builtin::subtract",{add_token,token_type::subtraction,""}},
        {"builtin::multiply",{add_token,token_type::multiplication,""}},
        {"builtin::divide",{add_token,token_type::division,""}},
        {"builtin::not_equal",{add_token,token_type::not_equal,""}},
        {"return",{add_token,token_type::keyword,"return"}},
        {"fn",{add_token,token_type::keyword,"fn"}},
        {"if",{add_token,token_type::keyword}}


    };
    return keyword_list;
    }

bool look_for_and_handle_keyword(std::string_view name){
    static auto& keyword_list = get_keyword_list();
    keyword_data kd;
    try{
        kd= keyword_list.at(name);
        
    }catch(const std::out_of_range& ex){
        return false;
    }
    kd.handler(kd.inp,kd.name);
    return true;
}



std::string_view token_type_to_string(token_type tt) {
    switch (tt) {
        case token_type::addition:
            return "addition";
        case token_type::subtraction:
            return "subtraction";
        case token_type::multiplication:
            return "multiplication";
        case token_type::division:
            return "division";
        case token_type::equality_check:
            return "equality_check";
        case token_type::logical_and:
            return "logical_and";
        case token_type::logical_or:
            return "logical_or";
        case token_type::not_equal:
            return "not_equal";
        case token_type::equals:
            return "equals";
        case token_type::opening_parenthesis:
            return "opening_parenthesis";
        case token_type::closing_parenthesis:
            return "closing_parenthesis";
        case token_type::separator:
            return "separator";
        case token_type::end_of_file:
            return "end_of_file";
        case token_type::scope_beginning:
            return "scope_beginning";
        case token_type::scope_ending:
            return "scope_ending";
        case token_type::comma:
            return "comma";
        case token_type::keyword:
            return "keyword";
        case token_type::identifier:
            return "identifier";
        case token_type::string_literal:
            return "string_literal";
        case token_type::numeric_literal:
            return "numeric_literal";
        case token_type::float_literal:
            return "float_literal";
        default:
            return "unknown";
    }
}




thread_local std::string_view input;
//interpreter function
//interpreter function
//interpreter function
//interpreter function

std::vector<token> Interpret(std::string_view input_arg){
    input =input_arg;
    

    


    for(;idx<input.size();idx++){
        char i= input[idx];
        switch(i){
            case ' ':
            case '\t':
            case '\n':
                break;


            case '+':
                
                add_token(token_type::addition);
                break;
            case '-':
                add_token(token_type::subtraction);
                break;
            case '*':
                add_token(token_type::multiplication);
                break;
            case '/':
                add_token(token_type::division);
                break;

            case '=':
                if(input[idx+1]== '='){
                    idx++;
                    add_token(token_type::equality_check);
                    break;
                }
                else{
                    add_token(token_type::equals);
                }
                break;
            
            case '&':
                if(input[idx+1]== '&'){
                    idx++;
                    add_token(token_type::logical_and);
                    break;
                }
                report_error("invalid syntax: to many \" & \" symbols ");
                goto stop;
                break;
            case '|':
                if(input[idx+1]== '|'){
                    idx++;
                    add_token(token_type::logical_or);
                    break;
                }
                report_error("invalid syntax: to many \" | \" symbols ");
                goto stop;
                break;


            case '(':
                add_token(token_type::opening_parenthesis);
                break;
            case ')':
                add_token(token_type::closing_parenthesis); 
                break;
            case ';':
                add_token(token_type::separator);
                break;
            case '{':
                add_token(token_type::scope_beginning);
                break;
            case '}':
                add_token(token_type::scope_ending);
                break;
            case '\0':
                add_token(token_type::end_of_file);
                break;
            case ',':
                add_token(token_type::comma);
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
                add_token(token_type::string_literal,value);
                break;
                }
            default:
                if(isdigit(i)){
                    uint32_t beg = idx;
                    bool dot_found = false;
                    token_type literal_type = token_type::numeric_literal;
                    while(true){
                        if(isdigit(input[idx+1])){
                            idx++;
                        }
                        else if(input[idx+1]=='.'){
                            if(!dot_found){
                            idx++;
                            dot_found = true;
                            literal_type = token_type::float_literal;
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
                    if(literal_type ==token_type::numeric_literal){
                        add_token(token_type::numeric_literal,result);
                    }
                    else if(literal_type ==token_type::float_literal){
                        add_token(token_type::float_literal,result);
                    }

                    break;
                }
                else{
                    uint32_t beg = idx;
                    uint32_t size;
                    token_type token_type = token_type::identifier;
                    idx++;
                    i = input[idx];
                    while(true){
                        if(char_is_not_special(i)&&i!=' '){
                            idx++;
                            i = input[idx];
                        }
                        else{
                            size=idx-beg;
                            idx--;
                            break;

                        }
                    }
                    std::string_view result(input.data()+beg,size);
                    if(!look_for_and_handle_keyword(result)){
                        add_token(token_type::identifier,result);
                    }
                    
                    break;
                }
                report_error("invalid character");
                break;

        }
    
    }
    add_token(token_type::end_of_file);
    //parser::ir_generator::EvaluateStatement(parser::StatementData);
    //parser::ir_generator::PrintIR();

    
    #if 0
    for(auto[tok_type,value]:token_list){
        std::cout << token_type_to_string(tok_type) << " val: " << value << "\n";
    }
    #endif


    {
    auto result = std::vector<token>(std::move(token_list));
    token_list = std::vector<token>();
    return result;
    }

stop:;
return std::vector<token>();
}

}



