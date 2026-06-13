#include "lexer.h"
#include "parser.h"
#include <filesystem>
#include <fstream>
#include <iostream>
#include <ostream>
#include <sstream>
#include <string_view>
#include <thread>
uint64_t tot = 0;
#if 0
void* operator new(std::size_t size){
    //std::cout << "allocating " << size << " bytes\n";
    tot+=size;
    return malloc(size);
}
#endif

namespace make_dast {
void convert_parse_tree();
}

namespace fs = std::filesystem;

using cmd_args = std::vector<std::string_view>;

struct config {
    std::ifstream input_file;
};

config current_config;

cmd_args format_args(int argc, char **argv) {
    cmd_args a;
    for (int i = 1; argc > i; i++) {
        a.push_back(argv[i]);
    }
    return a;
}
void process_args(cmd_args &args) {
    bool input_file_found = false;
    std::string input_file_name = "../main.qrtx";

    for (const auto &i : args) {
        if (i[0] != '-') {
            input_file_name = i;
        }
    }
    current_config.input_file = std::ifstream(input_file_name);
}

void init() {
    cmd_args args = format_args(__argc, __argv);
    process_args(args);
    // std::string input;
    // std::getline(std::cin,input);
    std::cout << fs::current_path() << "\n";

    std::stringstream *filebuffer = new std::stringstream();
    *filebuffer << current_config.input_file.rdbuf();
    std::string_view file = filebuffer->view();

    std::vector<lexer::token> tok_arr = lexer::Interpret(file);
    parser::Parse(tok_arr);
    make_dast::convert_parse_tree();
    // ir_generator::generate_ir();
}

int main(int argc, char **argv) {
    // Gui::entry();
    init();
}