#pragma once
#include <cstdint>
#include <vector>
#include <string_view>
namespace lexer{

enum class token_type : uint8_t {
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
    comma,

    identifier,

    string_literal,
    numeric_literal,
    float_literal,

};
struct token{
    token_type tok_type;
    std::string_view lexem;
};
std::string_view token_type_to_string(token_type tt);
std::vector<token> Interpret(std::string_view input_arg);

}