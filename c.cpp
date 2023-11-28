#include <iostream>
#include <list>

class data_type{
    public:
    std::string(*get_name)() = []()->std::string{
        return "intager";
    };
};


int main() {
    data_type d;
    std::cout<<d.get_name();

    return 0;
}
