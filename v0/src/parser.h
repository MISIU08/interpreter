#pragma once
#include <vector>
#include <cstdint>
#include "lexer.h"
#include  <deque>
#include <vector>
#include <unordered_map>
 namespace ast{
        class node;
        
        struct function_declaration{
            std::string_view name;
            std::vector<node*> argument_list;
            node* return_type;
        };
        struct function_defintion{
            function_declaration declaration_data;
            node* function_body;
        };

    



        typedef int function_declaration_data_id;
        struct ast_data{
            std::deque<node*>  arg_list_record;
            std::deque<node> node_alloc_pool;
            std::unordered_map<std::string_view,function_defintion*> function_record;
            std::deque<function_defintion> function_definitions;
            std::deque<function_declaration> function_declarations;
            std::deque<node*> global_nodes;
        }; 
        extern ast_data ast;
        
        struct arg_list{

            uint64_t beg;
            uint64_t size; 
            
        };


        enum class node_type{
            // NODE FAMILY: Literal
            string_literal,
            integer_literal,
            float_literal,

            //NODE FAMILY: operation
            positive,
            negative,
            subtraction,
            addition,
            division,
            multiplication,
            function_call,
            builtin_function_call,


            //NODE FAMILY: nofamily
            return_instruction,
            assigment,

            data_type,

            variable_declaration,
            variable_identifier,

            function_body,


            


        };

    enum class node_family{
        operation,
        literal,
        nofamily
        
    };

    std::string_view get_node_name(node_type);



    class node_data{
        arg_list argument_list;
        std::string_view name;
    };

    class node{
    public:
        node_type type;
        node_family family;

        arg_list argument_list;
        std::string_view name;
        
        node*& binary_left();
        node*& binary_right();
        node*& unary_operand();
        node*& arg_at(uint64_t);
        bool is_value_node();
        
    };

    }
namespace parser{
   
    void Parse(std::vector<lexer::token>& _token_list);
}