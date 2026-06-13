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

namespace ir{
struct argument_list;
struct data_type_data;
struct instruction;
struct data_type;
struct variable;
typedef uint64_t variable_id;
typedef uint32_t function_id;
struct function;
struct function_definition;


struct variable_record{
    std::unordered_map<std::string_view,ir::variable*> variables;
    std::unordered_map<variable_id,std::string_view> names;
    std::set<variable_id> contained_vars;
    
};

struct quartix_ir{
    std::deque<variable> variable_allocator;
    variable_record global_variables;
    std::vector<data_type_data> data_type_record;
    std::vector<function_definition*> function_definitions;
    function_definition* entry_point;
    function_definition*current_definition;
    std::unordered_map<std::string_view,data_type> data_type_name_record;
    std::unordered_map<std::string_view,std::deque<function>> function_record;
    
};

extern quartix_ir ir;

struct data_type_data;
typedef uint32_t data_type_id;
struct data_type;
struct function_call;
class value;
struct builtin_function;



//====================================================
// DATA TYPES
//===============================================
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

struct data_type{
    data_type(data_type_id typeId);
    data_type();
    bool operator==(const data_type&comp) const;
    data_type_id TypeId;
    data_type_data* data()const;
    
};
struct data_type_data{
    data_type_data();
    
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

std::string get_variable_name(ir::variable* v);




//===========================================
// ARGUMENT LIST
//==============================================

struct argument_list{
    argument_list(std::initializer_list<value> arg_list);
    argument_list(std::size_t size);
    argument_list();

    value& operator[](std::size_t idx);
    std::vector<data_type> get_data_types();
    uint64_t start;
    std::size_t size;
}; 







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
    operation(function_call *fc);
    operation(value* val);
    operation(builtin_function* bop);
    operation();

    
    void require_operation_type(ir::operation_type ot);
    operation_kind::call* as_function_call();
    operation_kind::value* as_value();
    operation_kind::builtin_function* as_builtin_function();

    operation_type operation_type;
private:
union{
    void* operation_data;
    operation_kind::call*operation_data_as_call;
    operation_kind::value*operation_data_as_value;
    operation_kind::builtin_function* operation_data_as_builtin_function;
};


};







//=============================================================================
//FUNCTIONS
//=============================================================================

struct function{
    std::string_view name;
    data_type return_type;
    std::vector<data_type> parameters;
    function_definition* definition=nullptr;
};

struct function_definition{
    std::vector<variable*> params;
    data_type return_type;
    std::vector<ir::instruction> instructions;
    variable_record local_variables;
    
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

    print 
};

struct builtin_function{

    builtin_function_type type;
    argument_list arg_list;
    value& binary_left();
    value& binary_right();

};



//============================================
//VALUES
//============================================
struct variable{
    variable(data_type dt,variable_id Id);
    bool data_type_to_be_resolved();
    void edit_data_type(data_type dt);
    void edit_unresolved_data_type(data_type dt);
    data_type type;
    variable_id Id;
    
};

struct variable_expression{
    variable* var;
    bool is_being_dereferenced;
};

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
    value(variable_expression var);
    value(literal lit);
    value();
    value(variable* var_ptr);
    data_type& get_data_type();
    value_kind val_kind;
    union{
        variable_expression var;
        literal lit;
    };

};











//==========================================
//INSTRUCTIONS
//=========================================
enum class instruction_type{
    set,
    operation,
    return_instruction,
};
namespace instruction_kind{
    struct set{
        variable* result_var;
        operation operation;

    };
    typedef ir::operation operation;
    struct return_instruction{
        variable*returned_var;
    };

};

class instruction{
public:
    
    instruction_type instruction_type;
    instruction(instruction_kind::set* set );
    instruction(instruction_kind::operation* operation );
    instruction(instruction_kind::return_instruction*ri );
    void require_instruction_type(ir::instruction_type it) const;
    instruction_kind::set* as_set_instruction() const;
    instruction_kind::operation* as_operation_instruction() const;
    instruction_kind::return_instruction* as_return_instruction() const;

private:
union{
    void*data;
    instruction_kind::operation* data_as_operation_instruction;
    instruction_kind::set* data_as_set_instruction;
    instruction_kind::return_instruction* data_as_return_instruction;

};

};

}