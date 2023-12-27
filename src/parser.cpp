#include  <unordered_map>
#include <iostream>
#include "parser.h"
#include <vector>
#include <deque>
#include "lexer.h"
#include <array>
#include <span>
#include <unordered_set>


namespace ast{
        struct node;
        enum class node_type;
        struct arg_list;
        class node;

        ast_data ast;
        
        

         std::string_view get_node_name(node_type type) {
            static const std::unordered_map<node_type, std::string_view> typeToString = {
                {node_type::positive, "positive"},
                {node_type::negative, "negative"},
                {node_type::subtraction, "subtraction"},
                {node_type::addition, "addition"},
                {node_type::division, "division"},
                {node_type::multiplication, "multiplication"},
                {node_type::function_call, "function_call"},
                {node_type::variable_identifier, "variable_identifier"},
                {node_type::string_literal, "string_literal"},
                {node_type::integer_literal, "integer_literal"},
                {node_type::float_literal, "float_literal"},
                {node_type::function_body,"function_body"},
                {node_type::variable_declaration,"variable_declaration"},
                {node_type::assigment,"assigment"},
                {node_type::data_type,"data_type"}
            };
            
            if(typeToString.contains(type)){
                return typeToString.at(type);
            }
            // Handle the case where the enum value is not found
            return "Unknown";
        }
        
        node*& node::arg_at(uint64_t idx){
            if(!(idx>argument_list.beg+argument_list.size)) return ast.arg_list_record[argument_list.beg+idx];
            else{
                std::cout << "accessing node argument out of bound;" << "parser error line:"<< __LINE__ << " file: " << __FILE__ << "\n";
            }
            return *(node**)((void*)1);
        }
        node*& node::binary_left(){
            return arg_at(0);
        }
        node*& node::binary_right(){
            return arg_at(1);
        }
        node*& node::unary_operand(){
            return arg_at(0);
        }

        bool node::is_value_node(){
            return this->family==node_family::literal || this->type == node_type::variable_identifier;
        }

        arg_list alloc_arg_list(uint64_t argc){
            arg_list al;
            al.beg=ast.arg_list_record.size();
            uint64_t size = 0;
            for(uint64_t i=0;argc>i;i++){
                ast.arg_list_record.emplace_back(nullptr);
                size++;

            }
            al.size=size;
            return al;
        }
        void declare_function(function_declaration fdc){
            ast.function_declarations.push_back(fdc);
        }
        void define_function(function_defintion fd){
            declare_function(fd.declaration_data);
            ast.function_definitions.push_back(fd);
        }

        node_family get_node_family(node_type nd){


            #if 0
            static std::map<node_type,node_family> node_family_record{
                {node_type::positive,node_family::operation},
                {node_type::negative,node_family::operation},
                {node_type::subtraction,node_family::operation},
                {node_type::addition,node_family::operation},
                {node_type::division,node_family::operation},
                {node_type::multiplication,node_family::operation},
                {node_type::function_call,node_family::operation},

                //NODE FAMILY:literal
                {node_type::string_literal,}

            };
            #endif


            node_family result = node_family::nofamily;
            switch (nd)
            {
                case node_type::positive:
                case node_type::negative:
                case node_type::subtraction:
                case node_type::addition:
                case node_type::division:
                case node_type::multiplication:
                case node_type::function_call:
                case node_type::builtin_function_call:
                    result = node_family::operation;
                    break;
                
                case node_type::string_literal:
                case node_type::integer_literal:
                case node_type::float_literal:
                    result=node_family::literal;
                    break;


            }
            return result;

        }
        
        ast::node* make_node(node_type nd,arg_list arglst,std::string_view name){
         node_family nf = get_node_family(nd);
         ast.node_alloc_pool.emplace_back(nd,nf,arglst,name);
         return &ast.node_alloc_pool.back();   
        };
        ast::node* make_leaf_node(node_type nd,std::string_view  name){
            return make_node(nd,alloc_arg_list(0),name);
        }
        ast::node* make_binary_node(node_type nd,std::string_view name=""){
            
            return make_node(nd,alloc_arg_list(2),name);
        }
        ast::node* make_unary_node(node_type nd,std::string_view name=""){
            return make_node(nd,alloc_arg_list(1),name);
        }





        ast::node*make_function_call_node(std::string_view name,uint64_t argc){

           return make_node(node_type::function_call,alloc_arg_list(argc),name);
        }

        ast::node*make_variable_node(std::string_view name){
            return make_leaf_node(node_type::variable_identifier,name);
        }

        ast::node* make_intager_literal_node(std::string_view value){
            return make_node(node_type::integer_literal,alloc_arg_list(0),value);
        }
         ast::node* make_string_literal_node(std::string_view value){
            return make_node(node_type::string_literal,alloc_arg_list(0),value);
        }
         ast::node* make_float_literal_node(std::string_view value){
            return make_node(node_type::float_literal,alloc_arg_list(0),value);
        }
        ast::node* make_variable_declaration_node(std::string_view type,std::string_view name){
            ast::node* ret = make_binary_node(node_type::variable_declaration);
            ret->binary_left()=make_leaf_node(node_type::data_type,type);
            ret->binary_right()=make_leaf_node(node_type::variable_identifier,name);
            return ret;
        }

        

        void print_ast(ast::node* a, uint64_t tabs){
            for(uint64_t i= 0;i<tabs;i++){
                std::cout << "\t";
            }
            std::cout << "("<< tabs <<")value/name:\"";
            std::cout << ((a->name == "")?"<undefined>":a->name) << "\"  node_kind:" << get_node_name(a->type) << ":\n";
            for(uint64_t i=0;a->argument_list.size>i;i++){
                print_ast(a->arg_at(i),tabs+1);
            }

        }


        class node_builder{
        public:
            class arg_linked_list_node{
                public:
                arg_linked_list_node(){     
                    data.fill(nullptr);
                }
                static constexpr uint64_t unit_size=5;
                std::array<ast::node*,unit_size> data;
                arg_linked_list_node* next=nullptr;
            };
            class allocator{
                
                static std::deque<arg_linked_list_node> pool;
                uint64_t previous_pool_state;
               public:

                void restore_pool_state(){
                    pool.resize(previous_pool_state);
                    
                }
                allocator(){
                    previous_pool_state =pool.size();
                }

                //lost 2 hours because of this :(((
                allocator(allocator &a)=delete;

                ~allocator(){
                    restore_pool_state();
                }
                node_builder::arg_linked_list_node* allocate(){
                    pool.push_back(arg_linked_list_node());
                    return &pool.back();
                }


            };

            node_builder::allocator &al;
            std::string_view name;
            node_type nt;
            uint64_t node_count = 0;
            uint64_t argument_count=0;
            
            node_builder::arg_linked_list_node* base_node;
            node_builder::arg_linked_list_node* current_node;
            node_builder(node_builder::allocator &_al, std::string_view _name,node_type _nt):al{_al},name{_name},nt{_nt}{
                base_node = al.allocate();
                current_node=base_node;

            }

            void add_arg(ast::node* nd){
                if(argument_count!=0 && argument_count%arg_linked_list_node::unit_size==0){
                    node_count+=1;
                    current_node->next=al.allocate();
                    current_node = current_node->next;
                }
                current_node->data[argument_count%arg_linked_list_node::unit_size]=nd;
                argument_count++;
            }

            ast::node*build(){
                ast::node* result = ast::make_node(nt,ast::alloc_arg_list(argument_count),name);
                arg_linked_list_node* current_arg_list_unit=base_node;
                uint64_t current_idx_for_unit = 0;
                for(uint64_t i=0;argument_count>i;i++){
                    
                    if(current_idx_for_unit>=arg_linked_list_node::unit_size){
                        current_idx_for_unit-=arg_linked_list_node::unit_size;
                        current_arg_list_unit=current_arg_list_unit->next;
                        if(!current_arg_list_unit){
                            std::cout << "out of bound at line: " <<__LINE__ << "  file: " << __FILE__ << "\n"; 
                        }
                    }
                    result->arg_at(i)=current_arg_list_unit->data.at(current_idx_for_unit);
                    current_idx_for_unit++;
                }
                return result;
            }
        };
        std::deque<node_builder::arg_linked_list_node> node_builder::allocator::pool;


}

















namespace parser{
    


    std::span<lexer::token> token_list;
    uint64_t token_list_cursor;
    lexer::token current_token;


    lexer::token get_next_token(uint64_t idx=0){
        if(token_list_cursor+idx+1>=token_list.size()-1){
            return token_list[token_list.size()-1];
        }
        else{
            return token_list[token_list_cursor+idx+1];
        }
    };

    void advance_token(){
        
        token_list_cursor++;
        if(token_list_cursor>=token_list.size()){
            std::cout << "error at line: " <<__LINE__ << "  file: " << __FILE__ << "\n"; 
        }
        current_token = token_list[token_list_cursor];
        
    }

    void expect_token(lexer::token_type tok_type){
        if(current_token.tok_type==tok_type){
            advance_token();
        }
        else{
            std::cout << "expectation error: expected token::" << lexer::token_type_to_string(tok_type) 
            << ", but got: token::" << lexer::token_type_to_string(current_token.tok_type) << " with value: " << current_token.lexem << "\n"; 
            std::terminate();
            advance_token();
        }
    }

    bool token_is_value_token(lexer::token_type tok_type){
        switch (tok_type)
        {
        case lexer::token_type::float_literal: return true;
        case lexer::token_type::numeric_literal: return true;
        case lexer::token_type::string_literal: return true;
        default:return false;
        }
    }
    typedef uint8_t Precedence;

    namespace operator_precedence{
        constexpr Precedence lowest_precedence = 0;
        constexpr Precedence logical_or_precedence=1;
        constexpr Precedence logical_and_precedence=2;
        constexpr Precedence equality_chek_precedence=3;
        constexpr Precedence not_equal_precedence=3;

        constexpr Precedence addition_precedence = 4;
        constexpr Precedence subtraction_precedence = 4;
        constexpr Precedence multiplication_precedence = 5;
        constexpr Precedence division_precedence = 5;
        
    }
    constexpr Precedence get_operator_precedence(lexer::token_type tok_type){
        switch (tok_type)
        {
        case lexer::token_type::addition:
            return operator_precedence::addition_precedence;
        case lexer::token_type::subtraction:
            return operator_precedence::subtraction_precedence;
        case lexer::token_type::multiplication:
            return operator_precedence::multiplication_precedence;
        case lexer::token_type::division:
            return operator_precedence::division_precedence;
        default:
            return operator_precedence::lowest_precedence;
        }
    }

    ast::node* parse_value(){
        ast::node* result = nullptr;
        switch (current_token.tok_type)
        {
        case lexer::token_type::numeric_literal:
            result =ast::make_intager_literal_node(current_token.lexem);
            break;
        case lexer::token_type::float_literal:
            result = ast::make_float_literal_node(current_token.lexem);
            break;
        case lexer::token_type::string_literal:
            result = ast::make_string_literal_node(current_token.lexem);
            break;
        case lexer::token_type::identifier:
            result = nullptr;
            result = ast::make_variable_node(current_token.lexem);
            break;
        default:
            std::cout<<"unidefined value token; " << "error at line: " <<__LINE__ << "  file: " << __FILE__ << "\n";

            std::terminate(); 
            break;
        }
        advance_token();
        return result;
    }
    ast::node* parse_expression(Precedence);
    
    ast::node*parse_infix_expr(lexer::token operator_arg,ast::node* left){
        ast::node* ret= nullptr;
        switch (operator_arg.tok_type)
        {
        case lexer::token_type::addition: ret = ast::make_binary_node(ast::node_type::addition); break;
        case lexer::token_type::subtraction: ret = ast::make_binary_node(ast::node_type::subtraction); break;
        case lexer::token_type::multiplication: ret = ast::make_binary_node(ast::node_type::multiplication); break;
        case lexer::token_type::division: ret = ast::make_binary_node(ast::node_type::division); break;
        default: std::cout << "error at line: " <<__LINE__ << "  file: " << __FILE__ << "\n";break; 

        }
        ret->binary_left() =left;
        ret->binary_right()= parse_expression(get_operator_precedence(operator_arg.tok_type));
        return ret;
    }




    ast::node* parse_function_call_body(std::string_view fn_name){
        static std::unordered_set<std::string_view> builtin_functions{"print"};
        ast::node_type node_type=ast::node_type::function_call;
        if(fn_name[0]=='#'){
            node_type = ast::node_type::builtin_function_call;
        }
        if(builtin_functions.contains(fn_name)){
            node_type = ast::node_type::builtin_function_call;
        }
        if(current_token.tok_type!=lexer::token_type::closing_parenthesis){
            ast::node_builder::allocator fba;
            ast::node_builder fb(fba,fn_name,node_type);
            fb.add_arg(parse_expression(operator_precedence::lowest_precedence));
            while (current_token.tok_type==lexer::token_type::comma)
            {   
                advance_token();
                fb.add_arg(parse_expression(operator_precedence::lowest_precedence));
            }
            return fb.build();
        }
        else{
            return ast::make_node(node_type,ast::alloc_arg_list(0),fn_name);
        }
    }

    ast::node* parse_terminal_expr(){
        ast::node* ret;
        if (token_is_value_token(current_token.tok_type))
        {
           ret = parse_value();
        }
        else if(current_token.tok_type==lexer::token_type::identifier){
            if(get_next_token().tok_type==lexer::token_type::opening_parenthesis){
                std::string_view fn_name = current_token.lexem;
                advance_token();
                advance_token();
                ret = parse_function_call_body(fn_name);
                expect_token(lexer::token_type::closing_parenthesis);
            }
            else if(get_next_token().tok_type==lexer::token_type::identifier){
                ret = ast::make_variable_declaration_node(current_token.lexem,get_next_token().lexem);
                advance_token();
                advance_token();
            }
            else{
                ret = parse_value();
            }
        }
        else if(current_token.tok_type== lexer::token_type::opening_parenthesis){
            advance_token();
            ret=parse_expression(operator_precedence::lowest_precedence);
            if(current_token.tok_type==lexer::token_type::closing_parenthesis){
                advance_token();
            }
        }

        else if(current_token.tok_type == lexer::token_type::addition){
            advance_token();
            ret = ast::make_unary_node(ast::node_type::positive);
            ret->unary_operand() = parse_terminal_expr();
        }
        else if(current_token.tok_type == lexer::token_type::subtraction){
            advance_token();
            ret = ast::make_unary_node(ast::node_type::negative);
            ret->unary_operand() = parse_terminal_expr();
        }
        else if(current_token.tok_type==lexer::token_type::keyword){
            if(current_token.lexem=="return"){
                advance_token();
                ret = ast::make_unary_node(ast::node_type::return_instruction);
                ret->unary_operand()=parse_expression(operator_precedence::lowest_precedence);
            }
        }
        else{
            std::cout << "error at line: " <<__LINE__ << "  file: " << __FILE__ << "\n"; 
        }
        return ret;
        
    }

    ast::node* parse_expression(Precedence prev_precedence){
        ast::node* left = parse_terminal_expr();
        lexer::token curr_operator = current_token;
        Precedence curr_precedence =get_operator_precedence(current_token.tok_type);
        while (curr_precedence!=operator_precedence::lowest_precedence)
        {
            if(prev_precedence>=curr_precedence){
                break;
            }
            else{
                advance_token();
                left = parse_infix_expr(curr_operator,left);
                curr_operator= current_token;
                curr_precedence = get_operator_precedence(current_token.tok_type);
            }

        }
        return left;

    }
    ast::node* parse_statement(){
        ast::node* left = parse_expression(operator_precedence::lowest_precedence);
        if(current_token.tok_type==lexer::token_type::equals){
            advance_token();
            ast::node*result =ast::make_binary_node(ast::node_type::assigment);
            result->binary_left()=left;
            result->binary_right()=parse_expression(operator_precedence::lowest_precedence);
            return result;
        }
        return left;
    }



    ast::node* parse_function_body(){

        ast::node_builder::allocator nda;
        ast::node_builder nd(nda,"",ast::node_type::function_body);
        nd.add_arg(parse_statement());
        expect_token(lexer::token_type::separator);
        while (current_token.tok_type!=lexer::token_type::scope_ending && current_token.tok_type!= lexer::token_type::end_of_file )
        {   

            nd.add_arg(parse_statement());
            expect_token(lexer::token_type::separator);
        }
        return nd.build();
        
    }



    void parse_function_declaration_or_definition(){
        static std::vector<ast::node*> accepted_argument_list;
        accepted_argument_list.clear();
        lexer::token return_type = current_token;
        expect_token(lexer::token_type::identifier);
        lexer::token function_name = current_token;
        expect_token(lexer::token_type::identifier);
        expect_token(lexer::token_type::opening_parenthesis);
        if(current_token.tok_type==lexer::token_type::identifier){
            accepted_argument_list.push_back(ast::make_variable_declaration_node(current_token.lexem,get_next_token().lexem));
            advance_token();
            expect_token(lexer::token_type::identifier);
            while(current_token.tok_type==lexer::token_type::comma){
                advance_token();
                accepted_argument_list.push_back(ast::make_variable_declaration_node(current_token.lexem,get_next_token().lexem));
                expect_token(lexer::token_type::identifier);
                expect_token(lexer::token_type::identifier);
            }
        }
        expect_token(lexer::token_type::closing_parenthesis);
        ast::function_declaration fdc;
        fdc.argument_list = accepted_argument_list;
        fdc.name = function_name.lexem;
        fdc.return_type = ast::make_leaf_node(ast::node_type::data_type,return_type.lexem);
        if(current_token.tok_type==lexer::token_type::scope_beginning){
            advance_token();
            ast::node* function_body = parse_function_body();
            expect_token(lexer::token_type::scope_ending);
            ast::function_defintion d;
            d.declaration_data = fdc;
            d.function_body = function_body;
            ast::define_function(d);
            return;           
        }
        else if(current_token.tok_type==lexer::token_type::separator){
            expect_token(lexer::token_type::separator);
            ast::declare_function(fdc);
        }
        else{
            std::cout << "error at line: " << __LINE__ << "file: " << __FILE__ << "\n";
        }

    }

    void parse_global_scope(){
        while(current_token.tok_type!=lexer::token_type::end_of_file){

            if(current_token.tok_type==lexer::token_type::identifier&&get_next_token().tok_type==lexer::token_type::identifier&&get_next_token(1).tok_type==lexer::token_type::opening_parenthesis){
                parse_function_declaration_or_definition();
            }
            else{
                ast::ast.global_nodes.push_back(parse_statement());
                expect_token(lexer::token_type::separator);
            }
        }
    }

    void Parse_start(){
        token_list_cursor =0;
        current_token = token_list[token_list_cursor];
        
        std::cout << "\n";
        parse_global_scope();
        for(auto i:ast::ast.function_definitions){
            std::cout <<"(0)"<< i.declaration_data.return_type->name <<" "<<i.declaration_data.name << "()\n\t"<<"(1)arglist:\n";
            for(auto a:i.declaration_data.argument_list){
                ast::print_ast(a,2);
            }
            std::cout << "\t(1)function body:\n";
            ast::print_ast(i.function_body,2);
            std::cout<< "\n\n";
            
        }
        for(auto i:ast::ast.global_nodes)
            ast::print_ast(i,0);
        std::cout << "\n\n\n";
    }

    void Parse(std::vector<lexer::token>& _token_list){
        token_list=_token_list;
        //func body
        Parse_start();

        //end of func body
       
    }


}