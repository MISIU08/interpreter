#include <string>
#include <vector>
#include <iostream>
#include <cstring>

#include "include/enum_to_type_map.hpp"

enum class enc{
    a,
    b,
    c,
    d
};
using  enc_map = enum_to_type_map<int>;
using my_map = enc_map::map<
    enc_map::elem<1,enc>,
    enc_map::elem<53,float>,
    enc_map::elem<37,double>,
    enc_map::elem<84,char>
>;

int main(){
    std::cout << typeid(my_map::get_type<37>).name();
}