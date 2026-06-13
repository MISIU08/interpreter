#pragma once
#include <algorithm>
#include <cstdint>
#include <iostream>

namespace{

    template<typename T, typename ... List>
    constexpr bool has_type()
    {
        if constexpr((std::is_same_v<T, List> || ...)) {
            return true;
        } else {
        return false;
        }
    }

    template <typename A, typename... T> constexpr std::size_t get_max_size() {
        if constexpr(sizeof...(T)==1){
            return std::max(sizeof(A), sizeof(T)...);
        }

        else{
            if (sizeof(A) < get_max_size<T...>()) {
                return get_max_size<T...>();
                }

        return sizeof(A);
            }
        return 0;
        }

    template<typename ...Args>
    class soft_union {
    public:
    static constexpr int size =get_max_size<Args...>();
    uint8_t data[size];

    void*get_void_data(){
        return (void*)data;
    }

    template<typename T>
    static constexpr bool has_type(){
        return ::has_type<T,Args...>();
    }

    template<typename T>
    T*get_as()const{
        static_assert(size >= sizeof(T));
        static_assert(has_type<T>());
        const uint8_t*d=data;
        return (T*)const_cast<uint8_t*>(d);
    }
    

    template <typename T>
    void construct_as(auto& ...args){
        static_assert(has_type<T>());
        std::construct_at(this->get_as<T>(),args...);
    }

    template <typename T>
    void destroy_as(){
        static_assert(has_type<T>());
        std::destroy_at(this->get_as<T>());
        }
    template <typename T>
    void copy_construct_from(const T&other){
        static_assert(has_type<T>());
        std::construct_at(this->get_as<T>(),other);
    }   
    };



}