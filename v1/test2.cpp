#include <string>
#include <vector>
#include <iostream>

template <typename IntType>
consteval std::size_t get_size(){
    static_assert(std::is_integral<IntType>());
    std::size_t digit_count = 0;
    IntType curr_val = std::numeric_limits<IntType>::max;
    while(curr_val!=0){
        digit_count++;
        curr_val/=10;
    }
    return digit_count;

}
template<typename IntType>
std::string NumToString(IntType num){
    static_assert(std::is_integral<IntType>());
    std::string result;
    std::vector<IntType> digits;
    if(0>num){
        result += '-';
        num = -num;
    }
    while(num>0){
        IntType digit = num % 10;
        digits.push_back(digit);
        num = (num-digit)/10;
    }
    for(int i = digits.size()-1;i>-1;i--){
        result += '0'+digits[i];
    }
    if(result == ""){
        result = "0";
    }
    return result;
}
int main(){
    std::cout << NumToString(-0);
}