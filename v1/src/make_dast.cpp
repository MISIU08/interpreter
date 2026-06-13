#include "dast.h"
#include <cstddef>
#include <cstdint>
#include <exception>
#include <iostream>
#include <optional>
#include <string_view>
#include <unordered_map>
#include <vector>
#include <cstring>
#include <charconv>
#include <magic_enum.hpp>
#include <enum_to_type_map.hpp>
#include <cstring>
#include <span>
#include "parser.h"
namespace exec{
    void exec();
}
namespace make_dast {

void resolve_binexpr_type(dast::expression::binary b);



//expression expr  = expression::binary(expression::make_int_literal("57",nullptr),expression::make_int_literal("3",nullptr),expression::binary_type::mul,nullptr);


dast::expression expr_as_casted_to(dast::expression  e,dast::data_type* dt){
    if(e.has_expr_type(dast::expression::type::literal)){
        if(e.as_literal().data_type == nullptr){
            e.as_literal().data_type = dt;
            return e;
        }
    }
    return dast::expression::cast(e,dt);
}


dast::function::defined current_definition = std::nullopt;
std::unordered_map<std::string_view, dast::variable *> global_variables;
std::unordered_map<std::string_view, std::vector<dast::function>> function_table;
std::unordered_map<dast::function_signature, dast::function> functions;
std::vector<dast::function::defined> definitions;
dast::variable_type current_var_decl_context = dast::variable_type::global;

dast::variable *make_var(std::string_view variable_name, dast::data_type *dt,
                   dast::variable_type var_type) {
    dast::variable *var = new dast::variable();
    var->name = variable_name;
    var->var_type = var_type;
    var->data_type = dt;
    if (current_var_decl_context == dast::variable_type::global)
        global_variables[variable_name] = var;
    else
        current_definition.local_variables()[variable_name] = var;
    return var;
}
void register_function_signature(dast::function_signature signature){
    if(functions.contains(signature)){
        return;
    }
    dast::function fn = dast::function::make_from(signature);
    functions[signature] = fn;
    function_table[signature.name].push_back(fn);
}
void register_function_definition(dast::function::defined fnd){
    if(functions.contains(fnd.signature())){
        functions[fnd.signature()].define_with(fnd);
    }
    functions[fnd.signature()] = dast::function::make_from(fnd);
    definitions.push_back(fnd);
}


std::unordered_map<dast::basic_type, dast::data_type *> bt_to_dt{
    {dast::basic_type::f32, new dast::data_type(dast::basic_type::f32, "f32")},
    {dast::basic_type::f64, new dast::data_type(dast::basic_type::f64, "f64")},
    {dast::basic_type::i32, new dast::data_type(dast::basic_type::i32, "i32")},
    {dast::basic_type::i64, new dast::data_type(dast::basic_type::i64, "i64")},
    {dast::basic_type::i8, new dast::data_type(dast::basic_type::i8, "i8")},
    {dast::basic_type::i16, new dast::data_type(dast::basic_type::i16, "i16")},
    {dast::basic_type::u8, new dast::data_type(dast::basic_type::u8, "u8")},
    {dast::basic_type::u16, new dast::data_type(dast::basic_type::u16, "u16")},
    {dast::basic_type::u32, new dast::data_type(dast::basic_type::u32, "u32")},
    {dast::basic_type::u64, new dast::data_type(dast::basic_type::u64, "u64")},
    {dast::basic_type::boolean, new dast::data_type(dast::basic_type::boolean, "bool")},
    {dast::basic_type::void_t, new dast::data_type(dast::basic_type::void_t,"void")}

};
std::unordered_map<std::string_view, dast::data_type *> data_type_record{
    {"f32", bt_to_dt.at(dast::basic_type::f32)},
    {"f64", bt_to_dt.at(dast::basic_type::f64)},
    {"i8", bt_to_dt.at(dast::basic_type::i8)},
    {"i16", bt_to_dt.at(dast::basic_type::i16)},
    {"i32", bt_to_dt.at(dast::basic_type::i32)},
    {"int", bt_to_dt.at(dast::basic_type::i32)},
    {"float", bt_to_dt.at(dast::basic_type::f32)},
    {"i64", bt_to_dt.at(dast::basic_type::i64)},
    {"u8", bt_to_dt.at(dast::basic_type::u8)},
    {"u16", bt_to_dt.at(dast::basic_type::u16)},
    {"u32", bt_to_dt.at(dast::basic_type::u32)},
    {"bool", bt_to_dt.at(dast::basic_type::boolean)},
    {"void",bt_to_dt.at(dast::basic_type::void_t)}
};

dast::data_type *get_type(std::string_view name) {
    if (data_type_record.contains(name)) {
        return data_type_record.at(name);
    }
    return nullptr;
}
dast::variable *get_var(std::string_view name) {
    if (current_definition.local_variables().contains(name)) {
        return current_definition.local_variables().at(name);
    }
    if (global_variables.contains(name)) {
        return global_variables.at(name);
    }
    std::cout << "undeclered ident "<< name <<"\n";     
    std::terminate();
    return nullptr;
}

dast::expression convert_expression(ast::node *expr);
dast::expression convert_binary_operation(ast::node *nd) {

    dast::expression left = convert_expression(nd->binary_left());
    dast::expression right = convert_expression(nd->binary_right());
    dast::expression::binary_type binary_type;
    switch (nd->type) {
    case ast::node_type::addition:
        binary_type = dast::expression::binary_type::add;
        break;
    case ast::node_type::subtraction:
        binary_type = dast::expression::binary_type::sub;
        break;
    case ast::node_type::multiplication:
        binary_type = dast::expression::binary_type::mul;
        break;
    case ast::node_type::division:
        binary_type = dast::expression::binary_type::div;
        break;
    case ast::node_type::equality_check:
        binary_type = dast::expression::binary_type::iseq;
        break;
    case ast::node_type::log_and:
        binary_type = dast::expression::binary_type::land;
        break;
    case ast::node_type::log_or:
        binary_type = dast::expression::binary_type::lor;
        break;
    case ast::node_type::isneq:
        binary_type = dast::expression::binary_type::isneq;
        break;
    case ast::node_type::is_greater_or_equal:
        binary_type = dast::expression::binary_type::isge;
        break;        
    case ast::node_type::is_greater_than:
        binary_type = dast::expression::binary_type::isgt;
        break;
    case ast::node_type::is_less_than:
        binary_type = dast::expression::binary_type::islt;
        break;
    case ast::node_type::is_less_than_or_equal:
        binary_type = dast::expression::binary_type::isle;
        break;
    default:
        std::terminate();
    }
    return dast::expression::binary(left,right,binary_type,nullptr);
}

dast::expression::function_call convert_function_call(ast::node *nd) noexcept{
    
    dast::function function = function_table.at(nd->name).at(0);
    dast::expression::arg_list args;
    for (uint32_t i = 0; nd->argument_list.size > i; i++) {
        dast::expression res = convert_expression(nd->arg_at(i));
        if(res.has_expr_type(dast::expression::type::binary)){
            resolve_binexpr_type(res.as_binary());
        }
        if(res.data_type()==nullptr){
            res = expr_as_casted_to(res,function.params()[i]);
        }
        args.add( res);
    }

    dast::expression result = dast::expression::function_call(std::move(args),function);

    return result;
}

dast::expression convert_literal(ast::node *node) {
    dast::expression::literal lit;
    lit.value = node->name;
    switch (node->type) {
    case ast::node_type::float_literal:
        lit.literal_type = dast::expression::literal_type::floatlit;
        break;
    case ast::node_type::integer_literal:
        lit.literal_type = dast::expression::literal_type::intlit;
        break;
    case ast::node_type::string_literal:
        lit.literal_type = dast::expression::literal_type::strlit;
        break;
    default:
        std::terminate();
    }
    return dast::expression(lit);
}
void resolve_expr_type(dast::expression  src);
dast::expression convert_expression(ast::node *expr) {

    switch (expr->type) {
    case ast::node_type::variable_declaration: {
        return make_var(expr->binary_right()->name,
                        get_type(expr->binary_left()->name),
                        current_var_decl_context);
    }
    case ast::node_type::multiplication:
    case ast::node_type::division:
    case ast::node_type::addition:
    case ast::node_type::subtraction:
    case ast::node_type::equality_check:
    case ast::node_type::log_and:
    case ast::node_type::log_or:
    case ast::node_type::isneq:
    case ast::node_type::is_greater_or_equal:
    case ast::node_type::is_greater_than:
    case ast::node_type::is_less_than:
    case ast::node_type::is_less_than_or_equal:
        return convert_binary_operation(expr);
    case ast::node_type::float_literal:
    case ast::node_type::integer_literal:
    case ast::node_type::string_literal:
        return dast::expression(convert_literal(expr));
    case ast::node_type::variable_identifier:
        return get_var(expr->name);
    case ast::node_type::dereference: {
        dast::expression::unary result( convert_expression(expr->unary_operand()), dast::expression::unary_type::deref,nullptr);
        return result;
    }
    case ast::node_type::function_call:
        return convert_function_call(expr);
        break;
    case ast::node_type::negative:{
        auto result = dast::expression::unary(convert_expression(expr->unary_operand()),dast::expression::unary_type::neg,nullptr);
        result.data_type() = result.operand().data_type();
        return result;
    }
    case ast::node_type::dot_operator:{
        dast::expression e = convert_expression(expr->binary_left());
        resolve_expr_type(e);
        if(e.data_type()->basic_t == dast::basic_type::class_t){
            dast::class_def& cdef = e.data_type()->as_class_def();
            return dast::expression::dot_operator(e,cdef.variables.at(expr->binary_right()->name));
        }
        std::terminate();
        break;
    }
    default:
        break;
    }
    std::terminate();
}
void convert_class_defs() {
    for (const auto &a : ast::ast.class_definitions) {
        std::string_view class_name = a->name;

        dast::data_type *result = new dast::data_type(dast::basic_type::class_t);
        result->name = class_name;
        dast::class_def &class_def = result->as_class_def();
        for (uint32_t i = 0; a->argument_list.size > i; i++) {
            ast::node *iterated = a->arg_at(i);
            if (iterated->type == ast::node_type::variable_declaration) {
                std::string_view var_name = iterated->binary_right()->name;
                std::string_view type_name = iterated->binary_left()->name;
                class_def.variables[var_name] = make_var(
                    var_name, get_type(type_name), dast::variable_type::member_var);
            }
        }

        data_type_record[class_name] = result;
    }
}
bool is_sint(dast::data_type* dt){
    if(!dt){
        return false;
    }
    dast::basic_type basic_t = dt->basic_t;
    return basic_t == dast::basic_type::i8 || basic_t == dast::basic_type::i16 || basic_t == dast::basic_type::i32 || basic_t == dast::basic_type::i64;
}
bool is_uint(dast::data_type* dt){
    if(!dt){
        return false;
    }
    dast::basic_type basic_t = dt->basic_t;
    return basic_t == dast::basic_type::u8 || basic_t == dast::basic_type::u16 || basic_t == dast::basic_type::u32 || basic_t == dast::basic_type::u64;
}
bool is_int(dast::data_type* dt){
    return is_uint(dt)||is_sint(dt);
}
bool is_valid_type(dast::data_type* dt){
    return (bool)dt;
}

struct int_t_data{
    dast::basic_type t;
    std::size_t min;
    std::size_t max;
    constexpr int_t_data(dast::basic_type t,std::size_t min,std::size_t max):t{t},min{min},max{max}{}
};
//                                           min             max
constexpr std::array<int_t_data,8> int_priority{
    int_t_data(dast::basic_type::i8,8-1,8-1),
    int_t_data(dast::basic_type::i16,16-1,16-1),
    int_t_data(dast::basic_type::i32,32-1,32-1),
    int_t_data(dast::basic_type::i64,64-1,64-1),
    int_t_data(dast::basic_type::u8,0,8),
    int_t_data(dast::basic_type::u16,0,16),
    int_t_data(dast::basic_type::u32,0,32),
    int_t_data(dast::basic_type::u64,0,64),
};
constexpr bool can_convert(dast::basic_type src,dast::basic_type dest){
    std::optional<int_t_data> src_opt_data;
    std::optional<int_t_data> dest_opt_data;
    for(int_t_data x:int_priority){
        if(x.t==src){
            src_opt_data =x;
        }
        if(x.t == dest){
            dest_opt_data =x;
        }
    }
    if(!(src_opt_data.has_value()&&dest_opt_data.has_value())){
        return false;
    }
    int_t_data src_data = src_opt_data.value();
    int_t_data dest_data = dest_opt_data.value();
    
    return (dest_data.min>=src_data.min&&dest_data.max>=src_data.max); 

}

void resolve_binary_int_operation(dast::expression::binary binexpr,bool is_logical){
    if(binexpr.left().data_type()==binexpr.right().data_type()){
        if(is_logical){
            return;
        }
        binexpr.data_type() = binexpr.left().data_type();
        return;
    }
    if(can_convert(binexpr.left().data_type()->basic_t,binexpr.right().data_type()->basic_t)){

        if(!is_logical){
            binexpr.data_type()=binexpr.right().data_type();
        }
        binexpr.left() = expr_as_casted_to(binexpr.left(),binexpr.right().data_type());
        return;
    }
    if(can_convert(binexpr.right().data_type()->basic_t,binexpr.left().data_type()->basic_t)){
        if(!is_logical){
            binexpr.data_type()=binexpr.left().data_type();
        }
        binexpr.right() = expr_as_casted_to(binexpr.right(),binexpr.left().data_type());
        return;
    }
    std::cout <<"error: unsafe implicit conversion\n";
    binexpr.data_type()=binexpr.left().data_type();
}
void resolve_binexpr_type(dast::expression::binary  binexpr,dast::basic_type t);
void resolve_binexpr_type(dast::expression::binary b){
    return resolve_binexpr_type(b,dast::basic_type::void_t);
}

bool is_arithmetic_binexpr(dast::expression::binary_type b){
    switch (b) {
        case dast::expression::binary_type::add:
        case dast::expression::binary_type::sub:
        case dast::expression::binary_type::div:
        case dast::expression::binary_type::mul:
            return true;
        default:
            return false;
    }
}
bool is_logical_binexpr(dast::expression::binary_type b){
    switch (b) {
        case dast::expression::binary_type::land:
        case dast::expression::binary_type::lor:
        case dast::expression::binary_type::iseq:
        case dast::expression::binary_type::isneq:
        case dast::expression::binary_type::isle:
        case dast::expression::binary_type::isge:
        case dast::expression::binary_type::isgt:
        case dast::expression::binary_type::islt:
        
            return true;
        default:
            return false;
    }
}
void resolve_binexpr_type(dast::expression::binary binexpr, dast::basic_type target_t){
    if(binexpr.data_type()!=nullptr){
        return;
    }

    if(binexpr.left().expr_type() ==dast::expression::type::binary){
        resolve_binexpr_type(binexpr.left().as_binary());
    }
    if(binexpr.right().expr_type()==dast::expression::type::binary){
        resolve_binexpr_type(binexpr.right().as_binary());
    }
    if(is_logical_binexpr(binexpr.binary_type())){
        binexpr.data_type() = bt_to_dt[dast::basic_type::boolean];

        bool left_is_int = is_int(binexpr.left().data_type());
        bool right_is_int = is_int(binexpr.right().data_type());
        if(left_is_int||right_is_int){
            if(left_is_int&&right_is_int){
                resolve_binary_int_operation(binexpr,true);
                return;
            }
            if(!is_valid_type(binexpr.left().data_type())||!is_valid_type(binexpr.right().data_type())){
                if(binexpr.left().expr_type()==dast::expression::type::literal||binexpr.right().expr_type()==dast::expression::type::literal){

                    if(left_is_int){
                        binexpr.set_right(expr_as_casted_to(binexpr.right(), binexpr.left().data_type()));

                        
                        return;
                    }
                    if(right_is_int){
                        binexpr.set_left(expr_as_casted_to(binexpr.left(),  binexpr.right().data_type()));

                        return;
                    }

                }
            }
        }
        return; 
    }

    bool left_is_int = is_int(binexpr.left().data_type());
    bool right_is_int = is_int(binexpr.right().data_type());
    if(left_is_int||right_is_int){
        if(left_is_int&&right_is_int){
            resolve_binary_int_operation(binexpr,false);
            return;
        }
        if(!is_valid_type(binexpr.left().data_type())||!is_valid_type(binexpr.right().data_type())){
            if(binexpr.left().expr_type()==dast::expression::type::literal||binexpr.right().expr_type()==dast::expression::type::literal){

                if(left_is_int){
                    binexpr.set_right(expr_as_casted_to(binexpr.right(), binexpr.left().data_type()));
                    binexpr.data_type()=binexpr.left().data_type();
                    
                    return;
                }
                if(right_is_int){
                    binexpr.set_left(expr_as_casted_to(binexpr.left(),  binexpr.right().data_type()));
                    binexpr.data_type()=binexpr.right().data_type();
                    return;
                }

            }
        }
    }
    if(binexpr.left().is_literal(dast::expression::literal_type::intlit)||binexpr.right().is_literal(dast::expression::literal_type::intlit)){
        dast::data_type* type = nullptr;
        if(target_t == dast::basic_type::void_t)
            type = bt_to_dt[dast::basic_type::i32];
        else 
            type = bt_to_dt[target_t];
        binexpr.data_type() =type;
        binexpr.set_left(expr_as_casted_to(binexpr.left(), type));
        binexpr.set_right(expr_as_casted_to(binexpr.right(), type));
        return;
    }
    std::cout <<"error: invalid conversion\n";
    std::terminate();
}
void resolve_expr_type(dast::expression  src){
        if(src.expr_type()==dast::expression::type::binary){
            resolve_binexpr_type(src.as_binary());
        }
}
void type_resolve_statement(dast::set_stmt* stmt){
    resolve_expr_type(stmt->src);
    if(stmt->dest.data_type()!=stmt->src.data_type()){
        stmt->src = expr_as_casted_to(stmt->src,stmt->dest.data_type());
    }
}


dast::statement convert_statement(ast::node *nd) {
    switch (nd->type) {
    case ast::node_type::assigment: {
        dast::set_stmt *s = new dast::set_stmt();

        if (nd->binary_left()->type == ast::node_type::multiplication &&
            data_type_record.contains(nd->binary_left()->binary_left()->name)) {
            ast::node *expr = nd->binary_left();
            int ptr_count = 1; 
            while(expr->type == ast::node_type::dereference){
                ptr_count++;
                expr = expr->unary_operand();
            }
            dast::data_type* base_type = get_type(expr->name);

            s->dest = dast::expression(make_var(
                expr->binary_right()->name, base_type,
                current_var_decl_context));
        } else {
            s->dest = dast::expression(convert_expression(nd->binary_left()));
        }

        s->src = convert_expression(nd->binary_right());

        type_resolve_statement(s);
        return s;
    } break;
    case ast::node_type::variable_declaration:{
        return dast::statement(convert_expression(nd));
        break;
    }
    case ast::node_type::multiplication:
        if (data_type_record.contains(nd->binary_left()->name)) {
            make_var(nd->binary_right()->name,
                     get_type(nd->binary_left()->name),
                     current_var_decl_context);
            return dast::statement();
        }
        break;
    case ast::node_type::function_call:
        return dast::statement(dast::expression (convert_function_call(nd)));
    case ast::node_type::return_instruction:{
        dast::expression result = dast::expression ( convert_expression(nd->unary_operand()));
        if(result.has_expr_type(dast::expression::type::binary)){
            resolve_binexpr_type(result.as_binary());
        }
        if(result.has_expr_type(dast::expression::type::literal)){
            if(result.data_type()==nullptr){
                result.as_literal().data_type = current_definition.signature().return_type;
            }
        }
        return  dast::ret_stmt(result );
    }
    case  ast::node_type::if_statement:{
        dast::if_stmt* stmt = new dast::if_stmt();
        stmt->condition =  dast::expression (convert_expression(nd->binary_left()));
        resolve_expr_type(stmt->condition);
        if(stmt->condition.data_type()!= bt_to_dt[dast::basic_type::boolean]){
            std::terminate();
        }
        for(uint32_t i = 0; nd->binary_right()->argument_list.size > i; i++){
            stmt->instructions.push_back(convert_statement(nd->binary_right()->arg_at(i)));
        }
        return stmt;
    }
    case ast::node_type::while_loop:{
        dast::while_stmt* loop = new dast::while_stmt();
        loop->condition = convert_expression(nd->binary_left());
        resolve_expr_type(loop->condition);
        if(loop->condition.data_type()!= bt_to_dt[dast::basic_type::boolean]){
            std::terminate();
        }
        for(uint32_t i = 0; nd->binary_right()->argument_list.size > i; i++){
            loop->instructions.push_back(convert_statement(nd->binary_right()->arg_at(i)));
        }
        return loop;

    }
    case ast::node_type::for_loop:{
        dast::code_block* result = new dast::code_block();
        std::vector<dast::statement>& res = result->instructions;
        if(nd->arg_at(0)!=nullptr){
            res.push_back(convert_statement(nd->arg_at(0)));
        }
        dast::while_stmt* stmt = new dast::while_stmt();
        stmt->condition = convert_expression(nd->arg_at(1));
        resolve_expr_type(stmt->condition);
        ast::node* scope = nd->arg_at(3);
        for(int i = 0; scope->argument_list.size > i; i++){
            stmt->instructions.push_back(convert_statement(scope->arg_at(i)));

        }
        stmt->instructions.push_back(convert_statement( nd->arg_at(2)));
        res.push_back(stmt);
        return result;
    }
    case ast::node_type::builtin_function_call:{
        dast::intrin_call* result = new dast::intrin_call();
        result->name = nd->name;
        for(int i= 0; nd->argument_list.size>i;i++){
            result->args.push_back(convert_expression(nd->arg_at(i)));
            resolve_expr_type(result->args.back());
        }
        return result;
    }
    
    default:
        if (nd->family == ast::node_family::operation) {
            return dast::statement(dast::expression (convert_expression(nd)));
        } else {
            std::terminate();
        }
    }
    std::terminate();
}
dast::function_signature make_signature(const ast::function_declaration& fn){
        dast::function_signature signature;
        signature.name = fn.name;
        for(auto&i:fn.argument_list){
            signature.params.push_back(get_type(i->binary_left()->name));
        }
        signature.return_type = get_type(fn.return_type->name);
        return signature;
}

void convert_function(ast::function_defintion fn){
    current_var_decl_context = dast::variable_type::local;
    dast::function_signature signature = make_signature(fn.declaration_data);
    current_definition =  dast::function::defined(signature);
    register_function_definition(current_definition);

    for(auto i:fn.declaration_data.argument_list){
        dast::variable* a= make_var(i->arg_at(1)->name, get_type(i->arg_at(0)->name),dast::variable_type::local);
        current_definition.local_variables()[i->arg_at(1)->name]=a;
        current_definition.params().push_back(a);
    }
    for (std::size_t idx = 0; fn.function_body->argument_list.size > idx; idx++) {
        ast::node *i = fn.function_body->arg_at(idx);
        current_definition.instructions().push_back(convert_statement(i));
    }
    
    current_definition = std::nullopt;
}
void convert_functions() {
    
    for (auto &fnd : ast::ast.function_declarations) {
        dast::function_signature signature = make_signature(fnd);
        register_function_signature(signature);
    }
    current_var_decl_context = dast::variable_type::local;
    for (auto &fn : ast::ast.function_definitions) {
        convert_function(fn);
    }
    
}
void make_init_function(){
    current_var_decl_context = dast::variable_type::local;
    
    dast::function_signature init_signature;
    init_signature.name = "#__init_module__#";
    init_signature.return_type = bt_to_dt[dast::basic_type::void_t];

    current_definition = dast::function::defined(init_signature);

    dast::function init_module_fn = dast::function::make_from(current_definition);
    functions[init_signature] = init_module_fn;
    for (auto &i : ast::ast.global_nodes) {
        current_definition.instructions().push_back(convert_statement(i));
        
        
    }
    
    
    definitions.push_back(current_definition);
}

void PrintDast();

void convert_parse_tree() {
    convert_class_defs();
    convert_functions();
    
    make_init_function();


    PrintDast();
    exec::exec();
}

//clang-format off

//clang-format on
//
//========================
// print dast
//=======================
int indents = 0;
void PrintIndents() {
    for (int i = 0; indents > i; i++) {
        std::cout << "\t";
    }
}

void PrintVar(dast::variable *v) {

    std::cout << "var: ";
    switch (v->var_type) {
    case dast::variable_type::global:
        std::cout << "global.";
        break;
    case dast::variable_type::local:
        std::cout << "local.";
        break;
    default:
        std::cout << "unknown.";
    }
    std::cout << v->name;
    uintptr_t id = (uintptr_t)v;
    std::cout << " , id = " << std::hex << id << std::dec;
    std::cout << ", type: " << v->data_type->name;
    std::cout << "\n";
}
void PrintExpression(dast::expression e);
void PrintBinExpr(dast::expression::binary binexpr) {

    std::cout << "binary dast::expression: ";
    std::cout << magic_enum::enum_name(binexpr.binary_type())<<", ";
    std::cout << "result_type: " << ((binexpr.data_type())?binexpr.data_type()->name : "<error-type>") << ":\n";
    indents++;
    PrintIndents();
    std::cout << "left: ";
    PrintExpression(binexpr.left());
    PrintIndents();
    std::cout << "right: ";
    PrintExpression(binexpr.right());
    indents -= 1;
}
void PrintUnaryExpr(dast::expression::unary  a) {
    std::cout << "unary_expr: ";
    switch (a.unary_type()) {
    case dast::expression::unary_type::deref:
        std::cout << "dereference of: ";
        break;
    default:
        std::cout << magic_enum::enum_name(a.unary_type());
    }
    std::cout << "\n";
    indents++;
    PrintIndents();
    PrintExpression(a.operand());
    
    indents--;
}
void PrintFunctionCall(dast::expression::function_call fncall) {
    std::cout << "fncall: " << fncall.called_function().name()
              << ", type = " << fncall.called_function().return_type()->name<< "\n";
    indents++;
    for (auto i : fncall.args()) {
        PrintIndents();
        PrintExpression(i);
    }
}
void PrintExpression(dast::expression e) {
    switch (e.expr_type()) {
    case dast::expression::type::variable:
        PrintVar(e.as_variable());
        break;
    case dast::expression::type::binary:
        PrintBinExpr(e.as_binary());
        break;
    case dast::expression::type::literal:{
        std::string_view dt_name = e.as_literal().data_type? e.as_literal().data_type->name : "<error-type>";
        std::cout << "literal: literal_type::"<<magic_enum::enum_name(e.as_literal().literal_type) << ", data_type:"<< dt_name <<", " <<e.as_literal().value << "\n";
        break;
    }
    case dast::expression::type::unary:
        PrintUnaryExpr(e.as_unary());
        break;
        ;
    case dast::expression::type::function_call:
        PrintFunctionCall(e.as_function_call());
        break;
    case dast::expression::type::cast:
        std::cout << "cast_to: " << e.as_cast().target_type()->name << ":\n";
        indents++;
        PrintIndents();
        PrintExpression(e.as_cast().operand());
        indents--;
    default:
        std::cout << "\n";
    }
}
void PrintSetStatement(dast::set_stmt *s) {
    indents++;
    PrintIndents();
    std::cout << "destination: ";

    indents++;
    PrintExpression(s->dest);
    indents--;

    PrintIndents();
    std::cout << "source: ";

    PrintExpression(s->src);
    indents--;
}
void PrintStatement(dast::statement &s);
void PrintIf(dast::if_stmt* stmt){
    indents++;
    PrintIndents();
    std::cout << "condition (expression):\n";
    PrintExpression(stmt->condition);
    std::cout << "code:\n";
    for(auto&i:stmt->instructions){
        PrintStatement(i);
    }
    
}
void PrintStatement(dast::statement &s) {
    PrintIndents();

    switch (s.stmt_type) {
    case dast::statement::type::set_stmt:
        std::cout << "set statement:\n";
        PrintSetStatement(s.as_set_stmt());
        break;
    case dast::statement::type::if_stmt:
        std::cout << "if statement:\n";
        indents++;
        PrintIndents();
        std::cout << "condition: ";
        PrintExpression(s.as_if_stmt()->condition);
        PrintIndents();
        std::cout << "code block: \n";
        indents++;       
        for(auto&i:s.as_if_stmt()->instructions){
            PrintStatement(i);
        }
        indents-=2;
        break;
    case dast::statement::type::expr_stmt:
        PrintExpression(s.as_expr_stmt());
        break;
    case dast::statement::type::ret_stmt:
        std::cout << "return ";
        PrintExpression(s.as_ret_stmt().expr);
        break;
    case dast::statement::type::while_stmt:
        std::cout << "while statement:\n";
        indents++;
        PrintIndents();
        std::cout << "condition: ";
        PrintExpression(s.as_while_stmt()->condition);
        PrintIndents();
        std::cout << "code block: \n";
        indents++;       
        for(auto&i:s.as_while_stmt()->instructions){
            PrintStatement(i);
        }
        indents-=2;
        break;
    case dast::statement::type::intrin_call:
        std::cout << "intrin call: \n";
        break;
    default:
        //std::terminate();
        break;
    }
}

void PrintDast() {
    for (dast::function::defined l : definitions) {
        indents = 0;
        std::cout << l.name() << ": " << l.return_type()->name <<" (" ;
        for(auto& i: l.params()){
            std::cout << i->data_type->name << " " << i->name << ", ";
        }
        std::cout <<")\n";
        indents = 1;
        for (auto &i : l.instructions()) {
            PrintStatement(i);
        }
    }

}


} // namespace dast





namespace exec{




using runtime_type_map = enum_to_type_map<dast::basic_type>::map<
    type_map_elem< dast::basic_type::i8, int8_t>,
    type_map_elem< dast::basic_type::i16, int16_t>,
    type_map_elem< dast::basic_type::i32, int32_t>,
    type_map_elem< dast::basic_type::i64, int64_t>,

    type_map_elem< dast::basic_type::u8, uint8_t>,
    type_map_elem< dast::basic_type::u16, uint16_t>,
    type_map_elem< dast::basic_type::u32, uint32_t>,
    type_map_elem< dast::basic_type::u64, uint64_t>,
    type_map_elem< dast::basic_type::boolean, bool>,
    type_map_elem<dast::basic_type::f32,float>
>;
class runtime_value;


template <dast::basic_type T>
using runtime_type = runtime_type_map::get_type<T>;

template <dast::basic_type T>
std::size_t get_basic_type_size(){
    return sizeof(runtime_type<T>);
}

std::size_t get_basic_type_size(dast::basic_type basic_t){
    switch (basic_t)
    {
        case dast::basic_type::i8:
            return get_basic_type_size<dast::basic_type::i8>();
        case dast::basic_type::i16:
            return get_basic_type_size<dast::basic_type::i16>();
        case dast::basic_type::i32:
            return get_basic_type_size<dast::basic_type::i32>();
        case dast::basic_type::i64:
            return get_basic_type_size<dast::basic_type::i64>();
        case dast::basic_type::u8:
            return get_basic_type_size<dast::basic_type::u8>();
        case dast::basic_type::u16:
            return get_basic_type_size<dast::basic_type::u16>();
        case dast::basic_type::u32:
            return get_basic_type_size<dast::basic_type::u32>();
        case dast::basic_type::u64:
            return get_basic_type_size<dast::basic_type::u64>();
        case dast::basic_type::boolean:
            return get_basic_type_size<dast::basic_type::boolean>();
        case dast::basic_type::void_t:
            return 0;
        default:
            std::terminate();
    }
    return 0;
}


class runtime_value;

struct executed{
    std::unordered_map<dast::variable*,runtime_value> global_vars;
    std::unordered_map<dast::variable*,std::size_t> offset_table;
    std::unordered_map<dast::data_type*,uint64_t> class_def_sizes;
    std::unordered_map<dast::function::defined ,std::size_t> sp_initial_offset;
    static constexpr int stack_size = 1000'000;
    void*stack_base = ::operator new(stack_size);
    void*stack_ptr= stack_base;
    void* base_pointer =nullptr;
    
    
    
};

executed curr_program;
void* program_stack_alloc(std::size_t size){
    [[unlikely]] if((char*)curr_program.stack_ptr + size > (char*)curr_program.stack_base + executed::stack_size){
        std::terminate();
    }
    void* result = curr_program.stack_ptr;
    curr_program.stack_ptr = (char*)curr_program.stack_ptr +size;
    return result;
}

class runtime_value{
    public:
        void* mem = nullptr;
        dast::data_type* type = make_dast::bt_to_dt[dast::basic_type::void_t];

        runtime_value(dast::data_type* dt){
            mem = program_stack_alloc(get_basic_type_size(dt->basic_t));
            type = dt;


        }
        runtime_value(void*ptr,dast::data_type*dt):mem{ptr},type{dt}{}
        runtime_value()=default;
        template <dast::basic_type T>
        runtime_type<T>& get_as(){
            if(T!=type->basic_t){
                std::terminate();
            }
            return *(runtime_type<T>*)mem;
        }



};

runtime_value cast_rtval_to(runtime_value rtval,dast::basic_type type);
void copy_to(runtime_value src,runtime_value dest){
    if(src.type==dest.type){ 
        std::size_t size = 0;
        if(dest.type->basic_t==dast::basic_type::class_t){
            size = curr_program.class_def_sizes[dest.type];
        }else{
            size = get_basic_type_size(dest.type->basic_t);
        }
        std::memcpy(dest.mem,src.mem,size);
    }
    else copy_to(cast_rtval_to(src,dest.type->basic_t),dest);
}

template <dast::basic_type T>
runtime_type<T> get_runtime_value_as(runtime_value rtval){
    runtime_type<T> val;
    
    switch(rtval.type->basic_t){
        case dast::basic_type::i8:
            val = rtval.get_as<dast::basic_type::i8>();
            break;
        case dast::basic_type::i16:
            val = rtval.get_as<dast::basic_type::i16>();
            break;
        case dast::basic_type::i32:
            val = rtval.get_as<dast::basic_type::i32>();
            break;
        case dast::basic_type::i64:
            val = rtval.get_as<dast::basic_type::i64>();
            break;
        case dast::basic_type::u8:
            val = rtval.get_as<dast::basic_type::u8>();
            break;
        case dast::basic_type::u16:
            val = rtval.get_as<dast::basic_type::u16>();
            break;
        case dast::basic_type::u32:
            val = rtval.get_as<dast::basic_type::u32>();
            break;
        case dast::basic_type::u64:
            val = rtval.get_as<dast::basic_type::u64>();
            break;
        default:
            std::terminate();
    }
    return val;
}


runtime_value cast_rtval_to(runtime_value rtval,dast::basic_type type){
    
    if(rtval.type->basic_t == type){
        return rtval;
    }
    runtime_value retval(make_dast::bt_to_dt[type]);
    
    switch(type){
        case dast::basic_type::i8:
            retval.get_as<dast::basic_type::i8>() = get_runtime_value_as<dast::basic_type::i8>(rtval);
            return retval;
        case dast::basic_type::i16:
            retval.get_as<dast::basic_type::i16>() = get_runtime_value_as<dast::basic_type::i16>(rtval);
            return retval;
        case dast::basic_type::i32:
            retval.get_as<dast::basic_type::i32>() = get_runtime_value_as<dast::basic_type::i32>(rtval);
            return retval;
        case dast::basic_type::i64:
            retval.get_as<dast::basic_type::i64>() = get_runtime_value_as<dast::basic_type::i64>(rtval);
            return retval;
        case dast::basic_type::u8:
            retval.get_as<dast::basic_type::u8>() = get_runtime_value_as<dast::basic_type::u8>(rtval);
            return retval;
        case dast::basic_type::u16:
            retval.get_as<dast::basic_type::u16>() = get_runtime_value_as<dast::basic_type::u16>(rtval);
            return retval;
        case dast::basic_type::u32:
            retval.get_as<dast::basic_type::u32>() = get_runtime_value_as<dast::basic_type::u32>(rtval);
            return retval;
        case dast::basic_type::u64:
            retval.get_as<dast::basic_type::u64>() = get_runtime_value_as<dast::basic_type::u64>(rtval);
            return retval;
        default:
            std::terminate();
    }
    std::terminate();
        
}
void DebugBreak(){


}
runtime_value get_local(dast::variable* var){
    if(var->name == "a"){
        DebugBreak();
    }
    return runtime_value( (void*)( ((char*)(curr_program.base_pointer)) +curr_program.offset_table[var]) , var->data_type);
}


runtime_value get_var(dast::variable*var){
    if(var->var_type == dast::variable_type::global){
        return curr_program.global_vars.at(var);
    }
    else if(var->var_type== dast::variable_type::local){
        return get_local(var);
    }
    std::terminate();
}
runtime_value get_var_from_dot_operation(dast::expression::dot_operator aa){
    aa.accesed_var()->ensure_var_type(dast::variable_type::member_var);
    runtime_value gg = get_var(aa.operand().as_variable());
    return runtime_value( (void*)( ((char*)(gg.mem)) +curr_program.offset_table[aa.accesed_var()]) , aa.accesed_var()->data_type);
}

runtime_value evaluate_expression(dast::expression  expr);

template <dast::basic_type T>
runtime_type<T> eval_ibinop(runtime_type<T> left,runtime_type<T> right,dast::expression::binary_type type){
    switch(type){
        case dast::expression::binary_type::add:
            return left+right;
        case dast::expression::binary_type::sub:
            return left-right;
        case dast::expression::binary_type::mul:
            return left*right;
        case dast::expression::binary_type::div:
            return left/right;
        case dast::expression::binary_type::band:
            return left&right;
        default:
            std::terminate();
        
    }
    std::terminate();
}
template<dast::basic_type operand_t>
void eval_intop(runtime_value result,runtime_value left_rt, runtime_value right_rt, dast::expression::binary_type  binary_type){

    runtime_type< operand_t> left = left_rt.get_as<operand_t>();
    runtime_type< operand_t> right= right_rt.get_as<operand_t>();
    switch (binary_type) {
        case dast::expression::binary_type::add:
        case dast::expression::binary_type::sub:
        case dast::expression::binary_type::mul:
        case dast::expression::binary_type::div:
        case dast::expression::binary_type::band:
            result.get_as<operand_t>() = eval_ibinop<operand_t>(left, right, binary_type);
            return;
        case dast::expression::binary_type::iseq:
            result.get_as<dast::basic_type::boolean>() = left == right;
            return;
        case dast::expression::binary_type::isneq:
            result.get_as<dast::basic_type::boolean>() = left != right;
            return;
        case dast::expression::binary_type::islt:
            result.get_as<dast::basic_type::boolean>() = left < right;
            return;
        case dast::expression::binary_type::isgt:
            result.get_as<dast::basic_type::boolean>() = left > right;
            return;
        case dast::expression::binary_type::isle:
            result.get_as<dast::basic_type::boolean>() = left <= right;
            return;
        case dast::expression::binary_type::isge:
            result.get_as<dast::basic_type::boolean>() = left >= right;
            return;
        default:
            std::terminate();

    }
}
template<dast::basic_type operand_t>
void  eval_intop(runtime_value result,runtime_value left_rt, runtime_value right_rt, dast::expression::binary  binary_type){
    return eval_intop<operand_t>(result,left_rt,right_rt,binary_type.binary_type());
}
runtime_value evaluate_int_operation(runtime_value left,runtime_value right,dast::expression::binary  binexpr){
    if(right.type!=left.type){
        std::terminate();
    } 


    runtime_value result(binexpr.data_type());
    switch(left.type->basic_t){
        case dast::basic_type::i8:
            eval_intop<dast::basic_type::i8>(result,left,right,binexpr);
            return result;
        case dast::basic_type::i16:
            eval_intop<dast::basic_type::i16>(result,left,right,binexpr);
            return result;
        case dast::basic_type::i32:
            eval_intop<dast::basic_type::i32>(result,left,right,binexpr);            
            return result;
        case dast::basic_type::i64:
            eval_intop<dast::basic_type::i64>(result,left,right,binexpr);            
            return result;
        case dast::basic_type::u8:
            eval_intop<dast::basic_type::u8>(result,left,right,binexpr);            
            return result;
        case dast::basic_type::u16:
            eval_intop<dast::basic_type::u16>(result,left,right,binexpr);            
            return result;
        case dast::basic_type::u32:
            eval_intop<dast::basic_type::u32>(result,left,right,binexpr);            
            return result;
        case dast::basic_type::u64:
            eval_intop<dast::basic_type::u64>(result,left,right,binexpr);            
            return result;
        default:
            std::terminate();
    }
    std::terminate();

   

}

runtime_value evaluate_binary_expression(dast::expression::binary binexpr){
    runtime_value left = evaluate_expression(binexpr.left());
    runtime_value right = evaluate_expression(binexpr.right());
    if(make_dast::is_int(right.type)&&make_dast::is_int(left.type)){
        return evaluate_int_operation(left,right,binexpr);
    }
    std::terminate();
}
int64_t to_int(std::string_view s){
    int64_t val;
    std::from_chars(s.cbegin(),s.cend(),val);
    return val;
}


struct call_frame{
    std::vector<runtime_value> args;
    runtime_value result_var;
    call_frame():args{}{}
    static call_frame make(dast::expression::function_call call){
        

        call_frame result;

        

        result.args.reserve(call.args().size());
        for(auto i:call.args()){
            result.args.push_back(evaluate_expression(i));
        }
        result.result_var= runtime_value(call.called_function().return_type());
        return  result;
    }
};
void exec_function(dast::function fn, call_frame* call_data);


runtime_value evaluate_expression(dast::expression  expr){
    switch(expr.expr_type()){
        case dast::expression::type::binary:
            return evaluate_binary_expression(expr.as_binary());
        case dast::expression::type::literal:
        {   
            runtime_value result(make_dast::bt_to_dt[dast::basic_type::i64]);
            result.get_as<dast::basic_type::i64>() = to_int(expr.as_literal().value);
            result =  cast_rtval_to(result,expr.as_literal().data_type->basic_t);
            return result;
        };
        case dast::expression::type::variable:
            return get_var(expr.as_variable());
        case dast::expression::type::cast:
            return cast_rtval_to( evaluate_expression(expr.as_cast().operand()),expr.as_cast().target_type()->basic_t);
        case dast::expression::type::function_call:{
            dast::expression::function_call fncall = expr.as_function_call();
            call_frame cf = call_frame::make(fncall);
            exec_function(fncall.called_function(),&cf);
            return  cf.result_var;
        }
        case dast::expression::type::unary:{
            dast::expression::unary e = expr.as_unary();
            if(e.unary_type() == dast::expression::unary_type::neg){
                make_dast::resolve_expr_type(e.operand());
                auto lit = dast::expression::make_int_literal("0",e.data_type());
                auto ex = dast::expression::binary(lit,e.operand(),dast::expression::binary_type::sub,e.data_type());
                return evaluate_expression(ex);

                
            }
        }
        case dast::expression::type::dot_operator:{
            return get_var_from_dot_operation(expr.as_dot_operator());
        }
        default:
            std::terminate();
    }
    std::terminate();
}

void execute_set_stmt(dast::set_stmt* set_stmt){

    runtime_value src  = evaluate_expression(set_stmt->src);
    if(set_stmt->dest.has_expr_type(dast::expression::type::dot_operator)){
        runtime_value dest =  get_var_from_dot_operation(set_stmt->dest.as_dot_operator());
        copy_to(src,dest);
        return;
    }

    if(set_stmt->dest.has_expr_type(dast::expression::type::variable)){
        dast::variable*dest_var =set_stmt->dest.as_variable();
        runtime_value dest =  get_var(dest_var);
        copy_to(src,dest);
        return;
    }
    std::terminate();
    //std::cout <<set_stmt->dest.as_variable()->data_type->name <<" " << set_stmt->dest.as_variable()->name << " = " << get_runtime_value_as<dast::basic_type::i64>(src) <<"\n";
}

enum class code_block_ret{
    ret,
    break_stmt,
    None
};

code_block_ret exec_code_block(std::span<dast::statement> code,call_frame* call_data){
    for(auto&i:code){
        if(i.stmt_type==dast::statement::type::ret_stmt){
            if(call_data){
                copy_to(evaluate_expression(i.as_ret_stmt().expr), call_data->result_var);
                
            }
            return code_block_ret::ret;
        }
        if(i.stmt_type == dast::statement::type::if_stmt){
            dast::if_stmt* if_stmt = i.as_if_stmt();
            runtime_value cond_result = evaluate_expression(if_stmt->condition);
            if( cond_result.type != make_dast::bt_to_dt[dast::basic_type::boolean]){
                std::terminate();
            } 
            bool cond = cond_result.get_as<dast::basic_type::boolean>();
            if(cond){
                code_block_ret retval = exec_code_block(i.as_if_stmt()->instructions, call_data);
                if(retval == code_block_ret::ret){
                    return code_block_ret::ret;
                }
            }
            continue;
        }
        if(i.stmt_type == dast::statement::type::break_stmt){
            return code_block_ret::break_stmt;
        }
        if(i.stmt_type == dast::statement::type::expr_stmt){
            runtime_value result = evaluate_expression(i.as_expr_stmt());
            continue;
        }
        if(i.stmt_type==dast::statement::type::code_block){
            auto retval =exec_code_block(i.as_code_block()->instructions,call_data);
            if(retval == code_block_ret::ret){
                    return code_block_ret::ret;
                }
            continue;;
            
        }
        if(i.stmt_type==dast::statement::type::intrin_call){
            dast::intrin_call* call = i.as_intrin_call();
            if(call->name == "print"){
                for(auto&i:call->args){
                    if(i.has_expr_type(dast::expression::type::literal)){
                        std::cout << i.as_literal().value << " ";
                    }
                    else if(make_dast::is_int(i.data_type())){
                        std::cout << get_runtime_value_as<dast::basic_type::i64>(evaluate_expression(i)) << " ";
                    }

                    
                }
                std::cout << "\n";
                continue;
            }
            std::terminate();
        }
        if(i.stmt_type == dast::statement::type::while_stmt){
            dast::while_stmt* while_stmt = i.as_while_stmt();
            int num_iter = 0;
            while(true){
                void* stack_ptr = curr_program.stack_ptr;
                runtime_value cond_result = evaluate_expression(while_stmt->condition);
                if( cond_result.type != make_dast::bt_to_dt[dast::basic_type::boolean]){
                    std::terminate();
                } 
                bool cond = cond_result.get_as<dast::basic_type::boolean>();
                if(!cond){
                    break;
                }
           

                num_iter++;
                
                code_block_ret retval = exec_code_block(i.as_while_stmt()->instructions, call_data);
                curr_program.stack_ptr =stack_ptr;
                if(retval == code_block_ret::ret){
                    return code_block_ret::ret;
                }
                if(retval == code_block_ret::break_stmt){
                    continue;
                }
                
            }
            continue;
        }
        i.require_stmt_type(dast::statement::type::set_stmt);
        execute_set_stmt(i.as_set_stmt());
    }
    return code_block_ret::None;
}

int curr_call_deph = 0;
void exec_function(dast::function function, call_frame* call_data  ){
    dast::function::defined  fn = function.as_defined_function();
    curr_call_deph++;
    if(curr_call_deph>500){
        std::terminate();
    }
    void* old_base_pointer = curr_program.base_pointer;
    void* old_stack_ptr = curr_program.stack_ptr;

    curr_program.base_pointer = curr_program.stack_ptr;
    curr_program.stack_ptr = (char*)curr_program.base_pointer +  curr_program.sp_initial_offset[fn];
    if(call_data){
        for(std::size_t i=0;fn.params().size()>i;i++){
            copy_to(call_data->args[i],get_var(fn.params()[i]));
        }
    }
    exec_code_block(fn.instructions(),call_data);
    curr_program.base_pointer =old_base_pointer;
    curr_program.stack_ptr = old_stack_ptr;
    curr_call_deph--;
}
void exec_function(dast::function fn){
    exec_function(fn,nullptr);
}
void fill_up_offset_table(){
    for(auto&i:make_dast::definitions){
        uint64_t curr_offset = 0;
        for(auto&[var_name,var]:i.local_variables()){
            curr_program.offset_table[var] = curr_offset;
            dast::basic_type basic_t = var->data_type->basic_t;
            if(basic_t == dast::basic_type::class_t){
                dast::class_def& n = var->data_type->as_class_def();
                uint64_t member_var_offset = 0;
                for(auto&[name, member_var]: n.variables){
                    curr_program.offset_table[member_var] = member_var_offset;
                    auto ii = get_basic_type_size(member_var->data_type->basic_t);;
                    curr_offset += ii;
                    member_var_offset += ii;
                }
                if(!curr_program.class_def_sizes.contains(var->data_type)){
                    curr_program.class_def_sizes[var->data_type] = member_var_offset;
                }
                
            }
            else{
                curr_offset += get_basic_type_size(basic_t);
            }
        }
        curr_program.sp_initial_offset[i] = curr_offset;
    }
}
void exec(){
    for(auto&[name,var] :make_dast::global_variables){
        curr_program.global_vars[var] = runtime_value(var->data_type); 
    }
    fill_up_offset_table();
    exec_function(make_dast::functions[dast::function_signature{"#__init_module__#",{},make_dast::bt_to_dt[dast::basic_type::void_t]}]);
}

}