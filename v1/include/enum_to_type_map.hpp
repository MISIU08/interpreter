#pragma once
#include <array>
#include <tuple>
#include <limits>
template <class VT>
class enum_to_type_map{
public:
    using value_type = VT;

    template <value_type K,typename V>
    struct elem{
        static constexpr value_type value =  K;
        using type =V;
    };

    template <typename ... elems>
    class map{
        using Tup =std::tuple<elems...>;

        using arr_type = std::array<value_type,std::tuple_size<Tup>{}>;
        static consteval arr_type get_value_array(){
            arr_type result;
            std::size_t curr_idx = 0;
            auto for_each_fn = [&](auto value){
                result[curr_idx] = decltype(value)::value;
                curr_idx++;
                return 0;
            };
            std::apply([&](auto ...x){std::make_tuple(for_each_fn(x)...);} , Tup());

            return result;
        }
        static constexpr arr_type value_array = get_value_array();
        static consteval std::size_t get_value_pos(value_type value){
            for(std::size_t i = 0; value_array.size()>i;i++){
                if(value_array[i]==value){
                    return i;
                }
            }
            return std::numeric_limits<std::size_t>::max();
        }
public:
        template <value_type T>
        using get_type = typename std::tuple_element_t<get_value_pos(T),Tup>::type;
    };
    

};
template <auto val,typename T>
using type_map_elem = typename enum_to_type_map<decltype(val)>::template elem<val,T>;