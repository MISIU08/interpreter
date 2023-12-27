#include "memory_pool.h"

#pragma once
#include <vector>
#include <cstdint>
#include <iostream>
class memory_pool_unit{
    std::size_t size=5000;
    void* pool;
    uint32_t allocated_size = 0;
    public:
    memory_pool_unit(){
        pool = (void(*))new char[size];
    }
    void* allocate(std::size_t alloc_size){
        if(allocated_size+alloc_size > size){
            std::cerr << "to big allocation" << "error at:" <<__FILE__ << " line:" <<__LINE__ <<"\n";
            std::terminate();
        }
        void*memory = pool;
        pool+=alloc_size;
        return memory;
    }
    bool enought_space(std::size_t alloc_size){
        return alloc_size +allocated_size <= size;
    }
    
    ~memory_pool_unit(){
        delete pool;
    }
    


};

class memory_pool{
    std::vector<memory_pool_unit> mem;
    memory_pool(){
        mem.emplace_back();
    }
    template <typename T>
    T* allocate(T allocated){
        std::size_t alloc_size = sizeof(T);
        T*result=nullptr;
        for(int a = 0;a<mem.size();i++){
            memory_pool_unit&i =mem[a];
            if(i.enought_space(alloc_size)){
                result = (T(*))i.allocate(alloc_size);
                break;
            }
            else if(a== mem.size() -1){
                mem.emplace_back();
            }
        }
        *result=allocated;
    }
};
