#pragma once
#include <cstddef>
#include <cstdint>
#include <exception>
#include <functional>

#include <cstring>
#include <optional>
#include <string_view>
#include <variant>
#include <vector>

#include <cstring>
#include <span>

// #include "utils\soft_union.h"
/*
template <typename... Ts> struct make_overload : Ts... {
    using Ts::operator()...;
};
template <typename... Ts> make_overload(Ts...) -> make_overload<Ts...>;

template <typename Variant, typename... Alternatives>
decltype(auto) visit_variant(Variant &&variant,
                             Alternatives &&...alternatives) {
    return std::visit(
        make_overload{std::forward<Alternatives>(alternatives)...},
        std::forward<Variant>(variant));
}

*/

namespace dast {
class expression;

enum class basic_type : uint8_t {
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
    boolean,
    string,

    ptr,
    void_t,
    class_t,

    unresolved,

};
enum class variable_type {
    global,
    local,
    member_var,
};
struct variable;
struct class_def {
    std::unordered_map<std::string_view, variable *> variables;
};
enum class unresolved_data_type {

};
struct data_type {

    data_type(basic_type bt, std::string_view name = "");
    data_type(const data_type &other) = delete;
    basic_type basic_t;
    std::string_view name;

    void require_basic_type(basic_type bt) const {
        if (this->basic_t != bt)
            std::terminate();
    };
    class_def &as_class_def() noexcept {
        require_basic_type(basic_type::class_t);
        return std::get<class_def>(type_info);
    };
    unresolved_data_type &as_unresolved() noexcept {
        require_basic_type(basic_type::unresolved);
        return std::get<unresolved_data_type>(type_info);
    };
    data_type *as_ptr_to_type() noexcept {
        require_basic_type(basic_type::ptr);
        return std::get<data_type *>(type_info);
    }

    std::variant<class_def, data_type *, unresolved_data_type, std::nullopt_t>
        type_info;
};


class variable {
  public:
    std::string_view name;
    data_type *data_type;
    variable_type var_type;
    void ensure_var_type(variable_type aa){
        if(aa != var_type){
            std::terminate();
        }
    }
};
class statement;

class function_signature {
  public:
    std::string_view name;
    std::vector<data_type *> params;
    data_type *return_type;
    bool operator==(const function_signature &other) const = default;
};
class function;
namespace impl {
struct function_definition;
}

class function {
  public:
    class defined {
      public:
        defined() { fnd = nullptr; }
        bool operator==(const defined &) const = default;
        bool operator==(const std::nullopt_t t) const { return fnd == nullptr; }
        defined(std::nullopt_t) { fnd = nullptr; }
        void operator=(std::nullopt_t) { fnd = nullptr; }
        defined(function_signature &i);
        std::vector<statement> &instructions();
        std::unordered_map<std::string_view, variable *> &local_variables();
        std::vector<variable *> &params();
        data_type *return_type() { return signature().return_type; };
        const function_signature &signature();
        const std::string_view &name() { return signature().name; };
        impl::function_definition *fnd;
    };
    function() : m_function_data(nullptr){};

    static function make_from(defined d);
    static function make_from(function_signature d);

    function_signature &as_declared_function() noexcept {
        return *std::get<function_signature *>(m_function_data->data);
    }
    defined as_defined_function() noexcept {
        return std::get<defined>(m_function_data->data);
    }
    void define_with(defined d) {
        if (d.signature() == as_declared_function()) {
            m_function_data->data = d;
        }
    }
    const function_signature &get_signature() {
        if (defined *i = std::get_if<defined>(&m_function_data->data)) {
            return i->signature();
        }
        return as_declared_function();
    }
    struct function_data {
        std::variant<defined, function_signature *> data;
        function_data(auto &i) : data{i} {}
        function_data(auto &&i) : data{i} {}
    };

    std::string_view name() { return get_signature().name; }
    data_type *return_type() { return get_signature().return_type; }
    const std::vector<data_type *> &params() { return get_signature().params; }
    function_data *m_function_data;


};

namespace impl {
class function_call;
class binary_expr;
class literal;
struct dot_operator;
class unary_expr;
class cast_expr;
class expression {
  public:
    enum class type {
        unary,
        binary,
        variable,
        literal,
        function_call,
        cast,
        dot_operator,
        None,
    };
    type m_type;
    std::variant<unary_expr *, binary_expr *, variable *, literal *,function_call *, cast_expr *,dot_operator*, std::nullopt_t> m_variant;
};

class literal {
  public:
    enum class type {
        intlit,
        strlit,
        floatlit,
    };
    type literal_type;
    data_type *data_type = nullptr;
    std::string_view value;
    bool has_literal_type(type t) { return literal_type == t; }
    literal() = default;
    literal(type t, std::string_view s, struct data_type *dt):literal_type(t),value(s),data_type(dt) {}
};

// public std::variant<unary_expr,binary_expr,variable*>{};

//: public std::variant<statement,expression>{};

class function_call {
  public:
    function_call(function f) : function(f) {}
    std::vector<expression> arguments;
    function function;
};

class binary_expr {
  public:
    enum class type {
        add,
        sub,
        mul,
        div,

        // logical and
        land,
        // logical or
        lor,
        // bitwise and
        band,
        // bitwise or
        bor,
        // is equal
        iseq,
        // is not equal
        isneq,

        // is greater than
        isgt,

        // is less than
        islt,

        // is greater tan or equal
        isge,

        // is less than or equal
        isle,

    };
    type binexpr_type;

    expression left;
    expression right;
    data_type *data_type = nullptr;
};
class unary_expr {
  public:
    enum class type {
        // bitwise not
        bnot,
        // logical not
        lnot,
        // get adress of var
        addressof,
        // dereferences expression:
        deref,

        neg,
        pos
    };
    type unexpr_type;
    expression operand;
    data_type *data_type = nullptr;
};
 
struct dot_operator{
    variable* memeber_var;
    expression accesed_expr;
};
class cast_expr {
  public:
    expression casted_expr;
    data_type *destination_type = nullptr;
};

} // namespace impl
// exprrrr
//
//

class expression {
  public:
    using type = impl::expression::type;
    using binary_type = impl::binary_expr::type;
    using unary_type = impl::unary_expr::type;
    using literal = impl::literal;
    using literal_type = literal::type;
    expression() {
        m_expr.m_variant = std::nullopt;
        m_expr.m_type = type::None;
    }
    void ensure_expr_type(type t) {
        if (t != m_expr.m_type) {
            std::terminate();
        }
    }
    type expr_type() { return m_expr.m_type; }
    bool is_literal() { return m_expr.m_type == type::literal; }
    bool is_literal(literal_type t) {
        if (is_literal()) {
            return this->as_literal().literal_type == t;
        };
        return false;
    }
    class binary {
      public:
        binary(expression left, expression right, binary_type type, data_type *data_t);
        expression left() { return expression(m_binary->left); }
        expression right() { return expression(m_binary->right); }
        void set_left(expression e) { m_binary->left = e.m_expr; }
        void set_right(expression e) { m_binary->right = e.m_expr; }
        binary_type binary_type() { return m_binary->binexpr_type; }
        data_type *&data_type() { return m_binary->data_type; }
        binary(expression e) noexcept {
            e.ensure_expr_type(type::binary);
            m_binary = std::get<impl::binary_expr *>(e.m_expr.m_variant);
        }
        operator expression() {
            expression result;
            result.m_expr.m_variant = m_binary;
            result.m_expr.m_type = type::binary;
            return result;
        }

      private:
        impl::binary_expr *m_binary;
    };

    class unary {
      public:
        unary(expression operand, unary_type type, data_type *data_t) {
            m_unary = new impl::unary_expr();
            m_unary->unexpr_type = type;
            m_unary->operand = operand.m_expr;
            m_unary->data_type = data_t;
        }
        unary(expression e) noexcept {
            e.ensure_expr_type(type::unary);
            m_unary = std::get<impl::unary_expr *>(e.m_expr.m_variant);
        }
        expression operand() { return expression(m_unary->operand); }
        void set_operand(expression e) { m_unary->operand = e.m_expr; }
        data_type *&data_type() { return m_unary->data_type; }
        unary_type unary_type() { return m_unary->unexpr_type; }

        operator expression() {
            expression result;
            result.m_expr.m_variant = m_unary;
            result.m_expr.m_type = type::unary;
            return result;
        }

      private:
        impl::unary_expr *m_unary;
    };
    
    class cast {
      public:
        cast(expression operand, data_type *data_t) {
            m_cast = new impl::cast_expr();

            m_cast->casted_expr = operand.m_expr;
            m_cast->destination_type = data_t;
        }
        cast(expression e) noexcept {
            e.ensure_expr_type(type::cast);
            m_cast = std::get<impl::cast_expr *>(e.m_expr.m_variant);
        }
        expression operand() { return expression(m_cast->casted_expr); }
        data_type *&target_type() { return m_cast->destination_type; }
        operator expression() {
            expression result;
            result.m_expr.m_variant = m_cast;
            result.m_expr.m_type = type::cast;
            return result;
        }

      private:
        impl::cast_expr *m_cast;
    };
    class dot_operator {
      public:
        dot_operator(expression operand, variable* v) {
            m_expr = new impl::dot_operator();

            m_expr->accesed_expr = operand.m_expr;
            m_expr->memeber_var = v;
        }
        dot_operator(expression e) noexcept {
            e.ensure_expr_type(type::dot_operator);
            m_expr = std::get<impl::dot_operator *>(e.m_expr.m_variant);
        }
        expression operand() { return expression(m_expr->accesed_expr); }
        variable*& accesed_var(){
            return m_expr->memeber_var;
        }
        operator expression() {
            expression result;
            result.m_expr.m_variant = m_expr;
            result.m_expr.m_type = type::dot_operator;
            return result;
        }

      private:
        impl::dot_operator *m_expr;
    };

    class arg_list {
      public:
        std::vector<impl::expression> expressions;
        void add(expression e) { expressions.push_back(e.m_expr); }
        auto size() { return expressions.size(); }
        arg_list(arg_list &&) = default;
        arg_list() = default;
        arg_list(arg_list &) = delete;
        expression operator[](std::size_t t) {
            return expression(expressions[t]);
        }
    };
    class arg_list_ref {
      public:
        class iterator {
          public:
            using internal_iterator = std::span<impl::expression>::iterator;
            internal_iterator iter;
            iterator(internal_iterator i) : iter(i) {}
            void operator++() { iter++; }
            void operator--() { iter--; }
            expression operator*() { return *iter; }
            bool operator==(iterator &other) { return iter == other.iter; }
        };
        iterator begin() { return expressions.begin(); }
        iterator end() { return expressions.end(); }
        std::span<impl::expression> expressions;
        auto size() { return expressions.size(); }
        arg_list_ref(std::vector<impl::expression> &expressions)
            : expressions(expressions) {}
        expression operator[](std::size_t t) {
            return expression(expressions[t]);
        }
    };

    class function_call {
      public:
        function_call(arg_list args, function fun) {
            m_function_call = new impl::function_call(fun);
            m_function_call->arguments = args.expressions;
        }
        function_call(expression e) noexcept {
            e.ensure_expr_type(type::function_call);
            m_function_call =
                std::get<impl::function_call *>(e.m_expr.m_variant);
        }
        function called_function() { return m_function_call->function; }
        arg_list_ref args() { return arg_list_ref(m_function_call->arguments); }
        operator expression() {
            expression result;
            result.m_expr.m_variant = m_function_call;
            result.m_expr.m_type = type::function_call;
            return result;
        }

      private:
        impl::function_call *m_function_call;
    };
    expression(impl::expression e) : m_expr(e) {}

    expression(variable *var) {
        m_expr.m_variant = var;
        m_expr.m_type = type::variable;
    }
    expression(literal lit) {
        m_expr.m_variant = new impl::literal(lit);
        m_expr.m_type = type::literal;
    }
    void operator=(auto &i) { *this = expression(i); }
    static literal make_int_literal(std::string_view str, data_type *dt) {
        return literal(literal_type::intlit, str, dt);
    }
    unary as_unary() { return unary(*this); }
    binary as_binary() { return binary(*this); }
    dot_operator as_dot_operator(){return dot_operator(*this);}
    literal &as_literal() noexcept {
        this->ensure_expr_type(type::literal);
        return *std::get<literal *>(m_expr.m_variant);
    }
    cast as_cast() { return cast(*this); }
    function_call as_function_call() { return function_call(*this); }
    variable *as_variable() {
        this->ensure_expr_type(type::variable);
        return std::get<variable *>(m_expr.m_variant);
    }
    data_type *data_type();
    bool has_expr_type(type t) { return t == m_expr.m_type; }
    impl::expression m_expr;
};

class ret_stmt {
  public:
    expression expr;
    ret_stmt(expression expr) : expr(expr) {}
};
class set_stmt {
  public:
    expression dest;
    expression src;
};
class construct_stmt {
  public:
    expression var;
    expression constructor_arg;
};
class if_stmt {
  public:
    expression condition;
    std::vector<statement> instructions;
};
struct intrin_call {
    std::vector<expression> args;
    std::string_view name;
};
class while_stmt {
  public:
    expression condition;
    std::vector<statement> instructions;
};
struct code_block {
    std::vector<statement> instructions;
};

class statement {
  public:
    enum class type {
        if_stmt,
        set_stmt,
        expr_stmt,
        construct_stmt,
        ret_stmt,
        while_stmt,
        intrin_call,
        break_stmt,
        code_block,
        None,
    };
    type stmt_type;
    std::variant<if_stmt *, set_stmt *, expression, construct_stmt *,
                 while_stmt *, intrin_call *, code_block *, std::nullopt_t,
                 ret_stmt>
        m_variant;
    void require_stmt_type(type t) {
        if (t != stmt_type) {
            std::terminate();
        }
    }
    statement(ret_stmt ret) : m_variant{ret} { stmt_type = type::ret_stmt; }
    statement(if_stmt *i) : m_variant{i} { stmt_type = type::if_stmt; }
    statement(while_stmt *i) : m_variant{i} { stmt_type = type::while_stmt; }
    statement(set_stmt *n) : m_variant{n} { stmt_type = type::set_stmt; }
    statement(code_block *v) {
        m_variant = v;
        stmt_type = type::code_block;
    }
    statement(intrin_call *i) : m_variant(i), stmt_type(type::intrin_call) {}
    statement(expression n) : m_variant{n} { stmt_type = type::expr_stmt; }
    statement(construct_stmt *n) : m_variant{n} {
        stmt_type = type::construct_stmt;
    }
    statement() : m_variant{std::nullopt} { stmt_type = type::None; };

    if_stmt *as_if_stmt() noexcept {
        require_stmt_type(type::if_stmt);
        return std::get<if_stmt *>(m_variant);
    }
    while_stmt *as_while_stmt() noexcept {
        require_stmt_type(type::while_stmt);
        return std::get<while_stmt *>(m_variant);
    }
    code_block *as_code_block() noexcept {
        require_stmt_type(type::code_block);
        return std::get<code_block *>(m_variant);
    }
    set_stmt *as_set_stmt() noexcept {
        require_stmt_type(type::set_stmt);
        return std::get<set_stmt *>(m_variant);
    }
    expression as_expr_stmt() noexcept {
        require_stmt_type(type::expr_stmt);
        return std::get<expression>(m_variant);
    }
    intrin_call *as_intrin_call() {
        require_stmt_type(type::intrin_call);
        return std::get<intrin_call *>(m_variant);
    }

    construct_stmt *as_construct_stmt() noexcept {
        require_stmt_type(type::set_stmt);
        return std::get<construct_stmt *>(m_variant);
    }
    ret_stmt as_ret_stmt() noexcept {
        require_stmt_type(type::ret_stmt);
        return std::get<ret_stmt>(m_variant);
    }
};

namespace impl {
struct function_definition {
    std::vector<statement> instructions;
    std::unordered_map<std::string_view, variable *> local_variables;
    std::vector<variable *> params;
    function_signature signature;
};

} // namespace impl

} // namespace dast
namespace std {
template <> struct hash<dast::function_signature> {
    std::size_t operator()(const dast::function_signature &a) const {
        std::size_t hash = a.params.size();
        for (const auto &i : a.params) {
            hash ^= (std::size_t)i + 0x9e3779b9 + (hash << 6) + (hash >> 2);
        }
        hash ^=
            (std::size_t)a.return_type + 0x9e3779b9 + (hash << 6) + (hash >> 2);
        std::hash<std::string_view> i;
        hash ^= i(a.name) + 0x9e3779b9 + (hash << 6) + (hash >> 2);
        return hash;
    }
};
template <> struct hash<dast::function::defined> {
    std::size_t operator()(const dast::function::defined &a) const {
        return std::hash<dast::impl::function_definition *>()(a.fnd);
    }
};

} // namespace std