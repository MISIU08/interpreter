#include "ir.h"
#include <unordered_map>
#include <cstring>
#include <functional>
#include <charconv>
#include <sstream>
#include <fstream>

namespace builtin_data_types_defs{
    typedef int32_t i32;
    typedef int16_t i16;
    typedef int8_t i8;
    typedef int64_t i64;

    typedef float f32;
    typedef double f64;

    typedef std::string string;

    typedef uint16_t u16;
    typedef uint32_t u32;
    typedef uint64_t u64;
    typedef uint8_t u8;
}


std::unordered_map<ir::builtin_data_type,uint32_t> builtin_data_types_sizes{
    {ir::builtin_data_type::i32,sizeof(builtin_data_types_defs::i32)},
    {ir::builtin_data_type::i16,sizeof(builtin_data_types_defs::i16)},
    {ir::builtin_data_type::i8,sizeof(builtin_data_types_defs::i8)},
    {ir::builtin_data_type::i64,sizeof(builtin_data_types_defs::i64)},

    {ir::builtin_data_type::f32,sizeof(builtin_data_types_defs::f32)},
    {ir::builtin_data_type::f64,sizeof(builtin_data_types_defs::f64)},

    {ir::builtin_data_type::string,sizeof(builtin_data_types_defs::string)},

    {ir::builtin_data_type::u16,sizeof(builtin_data_types_defs::u16)},
    {ir::builtin_data_type::u32,sizeof(builtin_data_types_defs::u32)},
    {ir::builtin_data_type::u64,sizeof(builtin_data_types_defs::u64)},
    {ir::builtin_data_type::u8,sizeof(builtin_data_types_defs::u8)}

};


uint32_t get_data_type_size(ir::builtin_data_type bdt);


struct variable{
    void* ptr;
    ir::builtin_data_type bdt=ir::builtin_data_type::void_data_type;
    uint32_t size_in_bytes;
    ir::variable_id id=UINT64_MAX;
};


class stack_frame{
public:
    class memory_block{
        public:
        void * memory;
        std::size_t size;
        std::size_t ocupied_size;
        memory_block(memory_block&b)=delete;
        memory_block(memory_block&&b){
            memory=b.memory;
            b.memory=nullptr;
            size=b.size;
            b.size=0;
            ocupied_size=b.ocupied_size;
            b.ocupied_size=0;
        }
        memory_block(){
            
            memory = malloc(500);
            size = 500;
            ocupied_size =0;
        }
        bool can_alloc(std::size_t to_alloc){
            if(to_alloc+ocupied_size>size){
                return false;
            }
            return true;
        }
        void* alloc(std::size_t to_alloc){
            if(can_alloc(to_alloc)){
                void* result=(void*)((uint8_t*)memory+ocupied_size);
                ocupied_size+=to_alloc;
                return result;
                
            }
            std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
            std::terminate();
        }
        ~memory_block(){
            free(memory);
        }
    };
    std::vector<memory_block> memory;
    stack_frame(stack_frame&b)=delete;
    stack_frame(stack_frame&&b){
        memory=std::move(b.memory);
    }
    stack_frame(){
        memory.emplace_back();
    }
    void*alloc(std::size_t to_alloc){
        for(int i=0;memory.size()>i;i++){
            if(memory[i].can_alloc(to_alloc)){
                return memory[i].alloc(to_alloc);
            }
        }
        memory.emplace_back();
        return memory.back().alloc(to_alloc);
    }
};

class call_stack_frame{
public:
    std::vector<variable> arguments;
    variable return_var;
};

std::vector<call_stack_frame> call_stack;
std::vector<stack_frame> stack;


void add_call_stack_frame(){
    call_stack.emplace_back();
}
void remove_call_stack_frame(){
    call_stack.pop_back();
}

call_stack_frame& get_current_call_stack_frame(){
    return call_stack.back();
}


std::unordered_map<ir::variable_id,variable> variables;
class stack_frame_manager{
public:
    stack_frame_manager(){
        stack.emplace_back();
    }
    ~stack_frame_manager(){
        stack.pop_back();
    }
};
template <typename T>
void set_var_to_interpreter_var(T&src,ir::builtin_data_type src_bdt,variable dest);

void* stack_alloc(std::size_t to_alloc){
    return stack.back().alloc(to_alloc);
}

ir::variable_id  get_var_id(variable var) noexcept{
    return var.id;
    
}

variable allocate_variable(ir::builtin_data_type bdt,ir::variable_id id){
    variable result;
    uint32_t bdt_size= get_data_type_size(bdt);
    result.ptr=stack_alloc(bdt_size);
    result.bdt=bdt;
    result.size_in_bytes=bdt_size;
    result.id=id;
    variables[id]=result;
    return result;
}

variable allocate_variable(ir::builtin_data_type bdt){
    variable result;
    uint32_t bdt_size= get_data_type_size(bdt);
    result.ptr=stack_alloc(bdt_size);
    result.bdt=bdt;
    result.size_in_bytes=get_data_type_size(bdt);

    return result;
}
void construct_variable(variable var){
    switch (var.bdt)
    {
        case ir::builtin_data_type::f32:
        case ir::builtin_data_type::f64:
        case ir::builtin_data_type::i16:
        case ir::builtin_data_type::i32:
        case ir::builtin_data_type::i64:
        case ir::builtin_data_type::i8:
        case ir::builtin_data_type::u16:
        case ir::builtin_data_type::u32:
        case ir::builtin_data_type::u64:
        case ir::builtin_data_type::u8:
            return;
        case ir::builtin_data_type::string:
            std::construct_at((builtin_data_types_defs::string*)var.ptr);
            return;
        default:
            std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
            std::terminate();
    }
}
template <typename uint_t>
int64_t convert_uint_to_i64(uint_t uint){
    return (uint64_t)uint;
}

template <typename sint_t>
int64_t convert_sint_to_u64(sint_t sint){
    return (int64_t)sint;
}

void set_variable_to_uint_value(variable var,uint64_t val){
    switch (var.bdt)
    {
        case ir::builtin_data_type::u8:
            {builtin_data_types_defs::u8 v=val;
            set_var_to_interpreter_var(v,var.bdt,var);}
            break;
        case ir::builtin_data_type::u16:
            {builtin_data_types_defs::u16 v=val;
            set_var_to_interpreter_var(v,var.bdt,var);}
            break;
        case ir::builtin_data_type::u32:
            {builtin_data_types_defs::u32 v=val;
            set_var_to_interpreter_var(v,var.bdt,var);}
            break;
        case ir::builtin_data_type::u64:
            {builtin_data_types_defs::u64 v=val;
            set_var_to_interpreter_var(v,var.bdt,var);}
            break;
        default:
            std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    }
    
}


int64_t get_sint_as_i64(variable var){
   switch(var.bdt){
        case ir::builtin_data_type::i8:
            return *(builtin_data_types_defs::i8*)var.ptr;
        case ir::builtin_data_type::i16:
            return *(builtin_data_types_defs::i16*)var.ptr;
        case ir::builtin_data_type::i32:
            return *(builtin_data_types_defs::i32*)var.ptr;
        case ir::builtin_data_type::i64:
            return *(builtin_data_types_defs::i64*)var.ptr;
            
    }
    std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    std::terminate();
}


uint64_t get_uint_as_u64(variable var){
   switch(var.bdt){
        case ir::builtin_data_type::u8:
            return *(builtin_data_types_defs::u8*)var.ptr;
        case ir::builtin_data_type::u16:
            return *(builtin_data_types_defs::u16*)var.ptr;
        case ir::builtin_data_type::u32:
            return *(builtin_data_types_defs::u32*)var.ptr;
        case ir::builtin_data_type::u64:
            return *(builtin_data_types_defs::u64*)var.ptr;
            
    }
    std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    std::terminate();
}


bool var_is_sint(variable var){
    switch(var.bdt){
        case ir::builtin_data_type::i8:
        case ir::builtin_data_type::i16:
        case ir::builtin_data_type::i32:
        case ir::builtin_data_type::i64:
            return true;
    }
    return false;
}

bool var_is_uint(variable var){
    switch(var.bdt){
        case ir::builtin_data_type::u8:
        case ir::builtin_data_type::u16:
        case ir::builtin_data_type::u32:
        case ir::builtin_data_type::u64:
            return true;
    }
    return false;
}
bool var_is_float(variable var){
    switch(var.bdt){
        case ir::builtin_data_type::f32:
        case ir::builtin_data_type::f64:

            return true;
    }
    return false;
}

builtin_data_types_defs::f64 get_float_var_as_f64(variable var){
    switch (var.bdt)
    {
        case ir::builtin_data_type::f32:
            return *(builtin_data_types_defs::f32*)var.ptr;
        case ir::builtin_data_type::f64:
            return *(builtin_data_types_defs::f64*)var.ptr;
            
    }
    std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    std::terminate();
}
void set_variable_to_float_value(variable var,builtin_data_types_defs::f64 val){
    switch (var.bdt)
    {
        case ir::builtin_data_type::f32:
            {builtin_data_types_defs::f32 v =val;
            set_var_to_interpreter_var(v,ir::builtin_data_type::f32,var);
            return;
            }
        case ir::builtin_data_type::f64:
            set_var_to_interpreter_var(val,ir::builtin_data_type::f64,var);
            return;
    }
    std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    std::terminate();
}

void set_variable_to_sint_value(variable, int64_t);
void set_variable_to_uint_value(variable, uint64_t);

void set_var_to_var(variable src,variable dest){

    if(var_is_sint(src)){
        if(var_is_sint(dest)){
            set_variable_to_sint_value(dest,get_sint_as_i64(src));
        }
        else if(var_is_uint(dest)){
            set_variable_to_uint_value(dest,get_sint_as_i64(src));
        }
        else if(var_is_float(dest)){
            set_variable_to_float_value(dest,get_sint_as_i64(src));
        }
        return;
    }
    if(var_is_uint(src)){
        if(var_is_uint(dest)){
            set_variable_to_uint_value(dest,get_uint_as_u64(src));
        }
        else if(var_is_sint(dest)){
            set_variable_to_sint_value(dest,get_uint_as_u64(src));
        }
        else if(var_is_float(dest)){
            set_variable_to_float_value(dest,get_uint_as_u64(src));
        }
        return;
    }
    if(var_is_float(src)){
        if(var_is_sint(dest)){
            set_variable_to_sint_value(dest,get_float_var_as_f64(src));
        }
        else if(var_is_uint(dest)){
            set_variable_to_uint_value(dest,get_float_var_as_f64(src));
        }
        else if(var_is_float(dest)){
            set_variable_to_float_value(dest,get_float_var_as_f64(src));
        }
        return;
    }

    if(src.bdt==ir::builtin_data_type::string){
        *(builtin_data_types_defs::string*)dest.ptr= *(builtin_data_types_defs::string*)src.ptr;
        return;
    }
    
   if(src.size_in_bytes>dest.size_in_bytes){
        std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
   } 
   std::memmove(dest.ptr,src.ptr,src.size_in_bytes);
}

template <typename T>
variable interpreter_var_to_var(T&val,ir::builtin_data_type bdt){
    if(get_data_type_size(bdt)!=sizeof(T)){
        std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    }
    variable var;
    var.bdt=bdt;
    var.ptr=(void*)&val;
    var.size_in_bytes=sizeof(T);
    return var;
}


template <typename T>
void set_var_to_interpreter_var(T&src,ir::builtin_data_type src_bdt,variable dest){
    if(src_bdt==dest.bdt){
        *(T*)dest.ptr=src;
        return;
    }
    variable src_var = interpreter_var_to_var(src,src_bdt);
    set_var_to_var(src_var,dest);
}



void set_variable_to_sint_value(variable var,int64_t val){
    switch (var.bdt)
    {
        case ir::builtin_data_type::i8:
            {
                builtin_data_types_defs::i8 v=val;
                set_var_to_interpreter_var(v,var.bdt,var);
            }
            break;
        case ir::builtin_data_type::i16:
            {
                builtin_data_types_defs::i16 v=val;
                set_var_to_interpreter_var(v,var.bdt,var);
            }
            break;
        case ir::builtin_data_type::i32:
            {
                builtin_data_types_defs::i32 v=(builtin_data_types_defs::i32)val;
                set_var_to_interpreter_var(v,var.bdt,var);
            }
            break;
        case ir::builtin_data_type::i64:
            {builtin_data_types_defs::i64 v=val;
            set_var_to_interpreter_var(v,var.bdt,var);}
            break;
        default:
            std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    }
    
}


uint32_t get_data_type_size(ir::builtin_data_type bdt){
    if(builtin_data_types_sizes.contains(bdt)){
        return builtin_data_types_sizes.at(bdt);
    }
    else{
        std::cout << "data type size undefined\n";
        return 0;
    }
}



template <typename T,ir::builtin_data_type bdt>
void binary_operation(variable fi,variable se ,ir::builtin_function_type ft,variable result_var){
   
    T&f=*(T*)fi.ptr;
    T&s=*(T*)se.ptr;
    T result;
    switch (ft)
    {
        case ir::builtin_function_type::add:
            result=f+s;
            break;
        case ir::builtin_function_type::subtract:
            result= f-s;
            break;
        case ir::builtin_function_type::multiply:
            result= f*s;
            break;
        default:
            std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    }
    set_var_to_interpreter_var(result,bdt,result_var);

}



void execute_binary_operation(variable result_var, variable f,variable s,ir::builtin_function_type ft){
    if(f.bdt!=s.bdt){
        if(s.bdt==result_var.bdt){
            variable old_f = f;
            f=s;
            s=old_f;
        }
        if(var_is_sint(f)){
            if(var_is_float(s)){
                variable old_s = s;
                s =allocate_variable(f.bdt);
                builtin_data_types_defs::i64 r = get_float_var_as_f64(old_s);
                set_var_to_interpreter_var(r,ir::builtin_data_type::i64,s);
            }
            if(var_is_uint(s)){
                variable old_s = s;
                s =allocate_variable(f.bdt);
                builtin_data_types_defs::i64 r = get_uint_as_u64(old_s);
                set_var_to_interpreter_var(r,ir::builtin_data_type::i64,s);
            }


        }
        else if(var_is_uint(f)){
            if(var_is_float(s)){
                variable old_s = s;
                s =allocate_variable(f.bdt);
                builtin_data_types_defs::u64 r = get_float_var_as_f64(old_s);
                set_var_to_interpreter_var(r,ir::builtin_data_type::u64,s);
            }
            if(var_is_sint(s)){
                variable old_s = s;
                s =allocate_variable(f.bdt);
                builtin_data_types_defs::u64 r = get_sint_as_i64(old_s);
                set_var_to_interpreter_var(r,ir::builtin_data_type::u64,s);
            }


        }
        else if(var_is_float(f)){
            if(var_is_sint(s)){
                variable old_s = s;
                s =allocate_variable(f.bdt);
                builtin_data_types_defs::f64 r = get_sint_as_i64(old_s);
                set_var_to_interpreter_var(r,ir::builtin_data_type::f64,s);
            }
            if(var_is_uint(s)){
                variable old_s = s;
                s =allocate_variable(f.bdt);
                builtin_data_types_defs::f64 r = get_uint_as_u64(old_s);
                set_var_to_interpreter_var(r,ir::builtin_data_type::f64,s);
            }
        }
        else {
            std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
            std::terminate();
            return;
            }
    }
    switch (f.bdt)
    {
        case ir::builtin_data_type::f32:
            binary_operation<builtin_data_types_defs::f32,ir::builtin_data_type::f32>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::f64:
            binary_operation<builtin_data_types_defs::f64,ir::builtin_data_type::f64>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::i16:
            binary_operation<builtin_data_types_defs::i16,ir::builtin_data_type::i16>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::i32:
            binary_operation<builtin_data_types_defs::i32,ir::builtin_data_type::i32>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::i64:
            binary_operation<builtin_data_types_defs::i64,ir::builtin_data_type::i64>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::i8:
            binary_operation<builtin_data_types_defs::i8,ir::builtin_data_type::i8>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::u16:
            binary_operation<builtin_data_types_defs::u16,ir::builtin_data_type::u16>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::u32:
            binary_operation<builtin_data_types_defs::u32,ir::builtin_data_type::u32>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::u64:
            binary_operation<builtin_data_types_defs::u64,ir::builtin_data_type::u64>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::u8:
            binary_operation<builtin_data_types_defs::u8,ir::builtin_data_type::u8>(f,s,ft,result_var);
            break;
        case ir::builtin_data_type::string:
            {
                builtin_data_types_defs::string result;
                if(ft== ir::builtin_function_type::add){
                    result = *(builtin_data_types_defs::string*)f.ptr +*(builtin_data_types_defs::string*)s.ptr;
                    set_var_to_interpreter_var(result,ir::builtin_data_type::string,result_var);
                }
                else{
                    std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
                    std::terminate();
                }
            }
            break;
        default:
            std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
            std::terminate();
    }
}





variable allocate_and_construct_variable(ir::builtin_data_type bdt,ir::variable_id id){
    variable result=allocate_variable(bdt,id);
    construct_variable(result);
    return result;
}

variable allocate_and_construct_variable(ir::builtin_data_type bdt){
    variable result=allocate_variable(bdt);
    construct_variable(result);
    return result;
}
ir::builtin_data_type get_builtin_data_type(ir::data_type dt){
    ir::data_type_data* dtd=dt.data();
    if(dtd->type==ir::data_type_data::type::as_builtin){
        return dtd->as_builtin;
    }
    std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    std::terminate();
}

variable convert_ir_var(ir::variable* var){
    ir::variable_id var_id =var->Id;
    return variables[var_id];
}

template <typename builtin_data_types_definition,ir::builtin_data_type bdt>
variable convert_literal_to(ir::literal lit){
    builtin_data_types_definition var;
    std::from_chars(lit.value.cbegin(),lit.value.cend(),var);
    variable v=allocate_variable(bdt);
    *(builtin_data_types_definition*)v.ptr=var;
    return v;
}

variable convert_ir_literal(ir::literal lit){
    if(lit.lit_type==ir::literal_type::intager_literal){
        if(lit.data_type.data()->type==ir::data_type_data::type::as_builtin){
            switch(lit.data_type.data()->as_builtin){
                case ir::builtin_data_type::i32:
                    return convert_literal_to<builtin_data_types_defs::i32,ir::builtin_data_type::i32>(lit);
                    break;
                case ir::builtin_data_type::i64:
                    return convert_literal_to<builtin_data_types_defs::i64,ir::builtin_data_type::i64>(lit);
                    break;
                case ir::builtin_data_type::i16 :
                    return convert_literal_to<builtin_data_types_defs::i16,ir::builtin_data_type::i16>(lit);
                    break;
                case ir::builtin_data_type::i8 :
                    return convert_literal_to<builtin_data_types_defs::i8,ir::builtin_data_type::i8>(lit);
                    break;


                case ir::builtin_data_type::u32:
                    return convert_literal_to<builtin_data_types_defs::u32,ir::builtin_data_type::u32>(lit);
                    break;
                case ir::builtin_data_type::u64:
                    return convert_literal_to<builtin_data_types_defs::u64,ir::builtin_data_type::u64>(lit);
                    break;
                case ir::builtin_data_type::u16 :
                    return convert_literal_to<builtin_data_types_defs::u16,ir::builtin_data_type::u16>(lit);
                    break;
                case ir::builtin_data_type::u8 :
                    return convert_literal_to<builtin_data_types_defs::u8,ir::builtin_data_type::u8>(lit);
                    break; 
                case ir::builtin_data_type::f32:
                    return convert_literal_to<builtin_data_types_defs::f32,ir::builtin_data_type::f32>(lit);
                    break;
                case ir::builtin_data_type::f64:
                    return convert_literal_to<builtin_data_types_defs::f64,ir::builtin_data_type::f64>(lit);
                    break;

            }
        }
    }
    else if(lit.lit_type==ir::literal_type::float_literal){
        if(lit.data_type.data()->type==ir::data_type_data::type::as_builtin){
            switch(lit.data_type.data()->as_builtin){
                case ir::builtin_data_type::f32:
                    return convert_literal_to<builtin_data_types_defs::f32,ir::builtin_data_type::f32>(lit);
                    break;
                case ir::builtin_data_type::f64:
                    return convert_literal_to<builtin_data_types_defs::f64,ir::builtin_data_type::f64>(lit);
                    break;
            }
        }
    }
    else if(lit.lit_type==ir::literal_type::string_literal){
        if(lit.data_type.data()->type==ir::data_type_data::type::as_builtin){
            switch (lit.data_type.data()->as_builtin)
            {
                case ir::builtin_data_type::string:
                    variable var =allocate_and_construct_variable(ir::builtin_data_type::string);               
                    *(builtin_data_types_defs::string*)var.ptr =lit.value;
                    return var;
                    break;

        }   }
    }
    std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    std::terminate();

}
variable convert_ir_value(ir::value val){
    switch (val.val_kind)
    {
        case ir::value_kind::literal:
            return convert_ir_literal(val.lit);
        case ir::value_kind::variable_expression:
            return convert_ir_var(val.var.var);
    }
    std::cout << "error at line: "<<__LINE__ << " file:"<<__FILE__<<"\n";
    std::terminate();
}

std::vector<variable> convert_ir_argument_list(ir::argument_list arg_lst){
    std::vector<variable> result;
    for(uint32_t i=0;arg_lst.size>i;i++){
        result.push_back(convert_ir_value(arg_lst[i]));
    }
    return result;
}

builtin_data_types_defs::i32 retcode=0;

std::string get_variable_name(variable var){
    if(var.id==UINT64_MAX)return "var";
    
    return ir::get_variable_name(&ir::ir.variable_allocator[var.id]);
}
void debug_print_var(variable var){
    std::cout<< "var: " << get_variable_name(var) <<"  value is: ";
    switch (var.bdt)
    {
        case ir::builtin_data_type::f32:
            std::cout << *(builtin_data_types_defs::f32*)var.ptr;
            break;
        case ir::builtin_data_type::i32 :
            std::cout << *(builtin_data_types_defs::i32*)var.ptr;
            break;
        case ir::builtin_data_type::string:
            std::cout <<
                *(builtin_data_types_defs::string*)var.ptr;
            break;



    }
    std::cout << "\n";
}

variable execute_function_call(ir::function_call *);

std::stringstream exec_print;
void handle_print_operation(ir::argument_list arg_list){
    for(uint32_t i=0;arg_list.size>i;i++){
        auto&val=arg_list[i];
        if(val.val_kind==ir::value_kind::literal){
            exec_print << val.lit.value;
        }
        if(val.val_kind==ir::value_kind::variable_expression){
            ir::variable* ir_var=val.var.var;
            variable var= convert_ir_var(ir_var);
            if(var_is_sint(var)){
                exec_print << get_sint_as_i64(var);

            }
            if(var_is_uint(var)){
                exec_print << get_uint_as_u64(var);
            }
            if(var_is_float(var)){
                exec_print << get_float_var_as_f64(var);
            }
            if(var.bdt==ir::builtin_data_type::string){
                exec_print << *(builtin_data_types_defs::string*)var.ptr;
            }
        }
        
    }
    exec_print << "\n";
}


void handle_call_operation(ir::operation_kind::call* call){

}

void handle_set_instruction(ir::instruction_kind::set* ins){
    ir::operation operation=ins->operation;
    if(operation.operation_type==ir::operation_type::value){
        ir::value*val=ins->operation.as_value();

        set_var_to_var(convert_ir_value(*val),convert_ir_var(ins->result_var));
        
    }
    if(operation.operation_type==ir::operation_type::builtin_function){
        ir::builtin_function* bf =operation.as_builtin_function();

        if(bf->arg_list.size==2){
            std::vector<variable> args = convert_ir_argument_list(bf->arg_list);
            execute_binary_operation(convert_ir_var(ins->result_var),args[0],args[1],bf->type);
            
        }
        else if(bf->type==ir::builtin_function_type::print){
            handle_print_operation(bf->arg_list);
        }
    }
    if(operation.operation_type==ir::operation_type::call){
        variable retval = execute_function_call(operation.as_function_call());
        set_var_to_var(retval,convert_ir_var(ins->result_var));
    }
    //std::cout << ir::get_variable_name(ins->result_var) << " value changed\n";
    //debug_print_var(convert_ir_var(ins->result_var));
}

void handle_operation_instruction(ir::operation*op){
    if(op->operation_type==ir::operation_type::call){
        execute_function_call(op->as_function_call());
    }
    if(op->operation_type==ir::operation_type::builtin_function){
        if(op->as_builtin_function()->type==ir::builtin_function_type::print){
            handle_print_operation(op->as_builtin_function()->arg_list);
        }
    }
    return;
}

void handle_return_instruction(ir::instruction_kind::return_instruction* ret){
    variable retvar = convert_ir_var( ret->returned_var);
    variable retval;
    retval.bdt=retvar.bdt;
    retval.ptr=malloc(retvar.size_in_bytes);
    std::memmove(retval.ptr,retvar.ptr,retvar.size_in_bytes);
    retval.size_in_bytes=retvar.size_in_bytes;
    get_current_call_stack_frame().return_var=retval;
}

void execute_function_definition(ir::function_definition* fndef){
    stack_frame_manager fn_stack_frame;
    for(auto&var_id:fndef->local_variables.contained_vars){

        ir::variable* var = &ir::ir.variable_allocator[var_id];
        ir::builtin_data_type bdt = get_builtin_data_type(var->type);
        allocate_and_construct_variable(bdt,var_id);
    }
    for(uint32_t i =0;fndef->params.size()>i;i++){
        set_var_to_var(get_current_call_stack_frame().arguments[i],convert_ir_var(fndef->params[i]));
    }
    for(auto&i:fndef->instructions){

        switch (i.instruction_type)
        {
            case ir::instruction_type::set:

                handle_set_instruction(i.as_set_instruction());
                break;
            case ir::instruction_type::operation:
                handle_operation_instruction(i.as_operation_instruction());
                break;
            case ir::instruction_type::return_instruction:
                handle_return_instruction(i.as_return_instruction());
                return;
        }
    }
}

variable execute_function_call(ir::function_call * fncall){
    add_call_stack_frame();
    get_current_call_stack_frame().arguments= convert_ir_argument_list(fncall->arg_list);
    execute_function_definition(fncall->function->definition);
    variable retval= get_current_call_stack_frame().return_var;
    remove_call_stack_frame();
    return retval;
}



void exec_ir(){

    //std::cout << "\n\ndebug print:\n";
    stack_frame_manager global_stack_frame;
    for(auto&var_id:ir::ir.global_variables.contained_vars){
        ir::variable* var = &ir::ir.variable_allocator[var_id];
        ir::builtin_data_type bdt = get_builtin_data_type(var->type);
        allocate_and_construct_variable(bdt,var_id);
    }
    add_call_stack_frame();
    execute_function_definition(ir::ir.entry_point);
    remove_call_stack_frame();
    
    std::cout << "\n\n\n\n\n\n"<< exec_print.str();
    std::ofstream f("output.txt");
    f<<exec_print.str();
    exec_print.str("");
    exec_print.clear();

}