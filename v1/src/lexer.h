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

    is_greater_than,

    is_less_than,

    is_greater_or_equal,

    is_less_than_or_equal,
    

    equals,
    opening_parenthesis,
    closing_parenthesis,
    semicolon,
    end_of_file,
    open_curly,
    closing_curly,
    comma,
    dot,

    identifier,
    keyword,

    string_literal,
    numeric_literal,
    float_literal,

};
struct token{
    token_type tok_type;
    std::string_view lexem;
};
extern std::vector<uint64_t> newlines;
std::string_view token_type_to_string(token_type tt);
std::vector<token> Interpret(std::string_view input_arg);

}