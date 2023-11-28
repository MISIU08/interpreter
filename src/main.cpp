#include "lexer.h"
#include "parser.h"
#include <iostream>
#include <fstream>
#include <sstream>
#if 0
void* operator new(std::size_t size){
    std::cout << "allocating " << size << "bytes\n";
    return malloc(size);
}
#endif
namespace ir_generator{void generate_ir();}
int main(){
    //std::string input;
    //std::getline(std::cin,input);
    std::ifstream t("C:\\Users\\kkoni\\Desktop\\cpp\\interpreter\\main.qrtx");
    std::stringstream filebuffer;
    filebuffer << t.rdbuf();
    std::string_view file = filebuffer.view();
    std::vector<lexer::token> tok_arr = lexer::Interpret(file);
    parser::Parse(tok_arr);
    ir_generator::generate_ir();
    return 0;
}