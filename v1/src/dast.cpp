#include "dast.h"

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
function function::make_from(defined d) {
    function result;
    result.m_function_data = new function_data(d);
    return result;
}
function function::make_from(function_signature d) {
    function result;
    result.m_function_data = new function_data(new function_signature(d));
    return result;
}
expression::binary::binary(expression left, expression right, expression::binary_type type, struct data_type *data_t) {
    m_binary = new impl::binary_expr();
    m_binary->binexpr_type = type;
    m_binary->left = left.m_expr;
    m_binary->right = right.m_expr;
    m_binary->data_type = data_t;
}

data_type *expression::data_type() {
    switch (m_expr.m_type) {
    case type::binary:
        return as_binary().data_type();
    case type::cast:
        return as_cast().target_type();
    case type::function_call:
        return as_function_call().called_function().return_type();
    case type::literal:
        return as_literal().data_type;
    case type::unary:
        return as_unary().data_type();
    case type::None:
        return nullptr;
    case type::variable:
        return as_variable()->data_type;
    case type::dot_operator:
        return as_dot_operator().accesed_var()->data_type;
    }
    std::terminate();
    return nullptr;
}

data_type::data_type(basic_type bt, std::string_view name)
    : type_info{std::nullopt} {
    this->name = name;
    this->basic_t = bt;
    switch (bt) {
    case basic_type::class_t:
        this->type_info = class_def();
        break;

    case basic_type::ptr:
        this->type_info = (data_type *)nullptr;
        break;
    default:
        break;
    }
};

function::defined::defined(function_signature &i) {
    fnd = new impl::function_definition();
    fnd->signature = i;
}

std::vector<statement> &function::defined::instructions() {
    return fnd->instructions;
}
std::unordered_map<std::string_view, variable *> &
function::defined::local_variables() {
    return fnd->local_variables;
}
std::vector<variable *> &function::defined::params() { return fnd->params; }

const function_signature &function::defined::signature() {
    return fnd->signature;
}
} // namespace dast




