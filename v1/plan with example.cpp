/*
PLAN:
    binary should be a unique resource and binary ref shall behave as a reference to a binary class 
    for efficiencey reasons binary_ref points directly to the implementation of binary;

    binary and binary ref shall hold ast contexts with them from witch they have been created; an expression shall not point to a node with a differnt ast context then itself
*/


//defined to avoid intelisense errors
#include <utility>
#include <memory>
#include <variant>
#include <array>
using binary_type = int ;
using binary_data = int;
using data_type = int;
using unary_type = int;
template<typename T>
class unique_resource{};



struct binary_tag{
    binary_type binary_type;
    data_type* data_type;
};
struct unary_tag{
    unary_type unary_type;
    data_type* data_type;
};


namespace impl {
    template<typename T, int nb_of_childs>
    class node_data;

    class raw_expr{
    public:
        std::variant<std::monostate, node_data<binary_tag,2>*,node_data<unary_tag,1>*> data; 
    };

    template<typename T, int nb_of_childs>
    class node_data{
    public:
        using child_arr = std::array<raw_expr,nb_of_childs>;
        node_data(T&&tag,child_arr&& arr):tag{tag},child_nodes{arr}{}
        T tag;
        child_arr child_nodes;
    };

}





//end of definitions


class expression{
public:

    template<typename T, int nb_of_childs>
    class node{
    public:
        using stored_type = impl::node_data<T,nb_of_childs>;
        node(stored_type&& value):data(std::make_unique<stored_type>( value)){}
        std::unique_ptr<stored_type> data;
        expression arg_at(int nb){
            return expression(data->child_nodes[nb]);
        }
        
        T&tag(){
            return data->tag;
        }
    };

    expression(impl::raw_expr e): m_data(e){}

    class binary{
    public:
        using binary_impl = node<binary_tag,2>;
        binary_impl m_data;    
        expression left(){ return m_data.arg_at(0); }
        expression right(){ return m_data.arg_at(1);}
        data_type*& data_type(){ return m_data.tag().data_type; }
        
    };
    class unary{
    public:
        using unary_impl = node<unary_tag,1>;
        unary_impl m_data;
        expression operand(){return m_data.arg_at(0);}
        data_type*& data_type(){return m_data.tag().data_type;}
        unary_type unary_type(){return m_data.tag().unary_type;}
    };
    


    static binary make_binary(expression left, expression right, binary_type, data_type*);
    impl::raw_expr m_data;

};







