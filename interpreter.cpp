#include <iostream>
#include <string>
#include <vector>
#include <list>
#include <cstdlib>
#include <tuple>
#include <algorithm>
#include <unordered_set>

template<typename T = uint32_t>
void insertItemAtPosition(std::list<T>& myList,uint32_t position, T value) {
    if(myList.size() == 0){
        myList.push_back(value);
        return;
    }
    if(position > myList.size() || position < 0 ){
        std::cout << "invalid position\n";
        return;
    }

    auto it = myList.begin();
    std::advance(it, position);
    myList.insert(it, value);
}

enum class operations: uint8_t{
    add = 0,
    subtract,
    multiply,
    divide
};



char operator_to_char(operations a){
    switch(a){
        case operations::add:
        return '+';
        case operations::subtract:
        return '-';
        case operations::multiply:
        return '*';
        case operations::divide:
        return '/';
    }
    std::cout << "interpreter error, cannot convert operator to char form, at line: " << __LINE__ << ", in file: " << __FILE__;
     return ' ';
}

template <typename T>
struct NumExprStruct{
    std::vector<uint32_t> RelationPriority;
    std::vector<T> Numbers;
    std::vector<operations> Relations;
    
    
};

template <typename T>
struct NumProcHelp{
    NumProcHelp(T val):value{val},replacer{UINT32_MAX}{

    }
    T value;
    uint32_t replacer;
};

//Executes number operations
template <typename T>
T ExecuteOperation(operations operation,T FirstNum,T SecondNum){
    switch(operation){
        case operations::add:
            //std::cout << FirstNum << " + " << SecondNum<<" = " << FirstNum +SecondNum << "\n";
            return FirstNum + SecondNum;
        case operations::subtract:
            //std::cout << FirstNum << " - " << SecondNum<<" = " << FirstNum -SecondNum << "\n";
            return FirstNum -SecondNum;
        case operations::multiply:
            //std::cout << FirstNum << " * " << SecondNum<<" = " << FirstNum *SecondNum << "\n";
            return FirstNum *SecondNum;
        case operations::divide:
            //std::cout << FirstNum << " / " << SecondNum<<" = " << FirstNum /SecondNum << "\n";
            return FirstNum /SecondNum;

        default:
            std::cout << "error at : "<< __LINE__ << "\n"; 
            return 0;
    }
};




//Claculates Number expressions witch are preprocessed by the interpreter function
template <typename T>
T CalculateNumExprStatement(const NumExprStruct<T>& NumExpr){
    std::vector<NumProcHelp<T>> Numbers;
    Numbers.reserve(NumExpr.Numbers.size());
    T Result = 0;

    for(const T i:NumExpr.Numbers){
        Numbers.emplace_back(i);
    }
    for(const uint32_t idx:NumExpr.RelationPriority){
        
        uint32_t FirstNumIdx = idx;
        while(true){
            if(Numbers[FirstNumIdx].replacer != UINT32_MAX){
                FirstNumIdx = Numbers[FirstNumIdx].replacer;
            }
            else{
                break;
            }
        }

        uint32_t SecondNumIdx = idx+1;
        while(true){
            if(Numbers[SecondNumIdx].replacer != UINT32_MAX){
                SecondNumIdx = Numbers[SecondNumIdx].replacer;
            }
            else{
                break;
            }
        }

        operations operation =NumExpr.Relations[idx];
        T FirstNum =Numbers[FirstNumIdx].value;
        T SecondNum = Numbers[SecondNumIdx].value;
        Result = ExecuteOperation(operation,FirstNum,SecondNum);
        Numbers[FirstNumIdx].value = Result;
        Numbers[SecondNumIdx].replacer = FirstNumIdx;


    }
   
    return Result;
}

template <typename T>
std::vector<T> create_vec(){
    std::vector<T> a;
    return a;
}
struct temp_AS_MD_vecs{
    temp_AS_MD_vecs(std::vector<uint32_t> a = create_vec<uint32_t>(),std::vector<uint32_t> b = create_vec<uint32_t>()):temp1(a),temp2(b) {}

    
    std::vector<uint32_t>& temp1;
    std::vector<uint32_t>& temp2;
};

template <typename T>
std::vector<T> removeDuplicates(const std::vector<T>& vec) {
    std::unordered_set<T> seen;
    std::vector<T> result;
    result.reserve(std::size_t(vec.size()*0.75));

    for (const auto& element : vec) {
        // Insert the element into the set if it hasn't been encountered before
        if (seen.find(element) == seen.end()) {
            seen.insert(element);
            result.push_back(element);
        }
    }

    return result;
}
template <typename T>
void push_to_op_vec(operations op,std::vector<T>& temp_AS_vec, std::vector<T>& temp_MD_vec, T i){
        switch (op)
    {
    case operations::add :
        temp_AS_vec.push_back(i);
        break;
    case operations::subtract:
        temp_AS_vec.push_back(i);
        break;
    case operations::multiply:
        temp_MD_vec.push_back(i);
        break;
    case operations::divide:
        temp_MD_vec.push_back(i);
        break;
    
    default:
        std::cout << "\ninterpreter error: at line:"<<__LINE__<<"   in file:"<<__FILE__ <<"   "<< operator_to_char(op)<<"\n";
        break;
}
}

template <typename T>
std::vector<uint32_t> calculate_relation_priority(NumExprStruct<T>& NumExpr, std::vector<std::tuple<uint32_t,uint32_t,uint32_t>>& parentesis_data,temp_AS_MD_vecs& tempVecs){
    //Temporary vectors containing a list of  multiplictions and divisions
    std::unordered_set<uint32_t> seen;
    auto&[temp_MD_vec,temp_AS_vec]=tempVecs;
    std::vector<uint32_t> result;
    result.reserve(50);

    temp_AS_vec.reserve(50);
    temp_MD_vec.reserve(50);
    std::sort(parentesis_data.begin(), parentesis_data.end(), [](std::tuple<uint32_t,uint32_t,uint32_t> a, std::tuple<uint32_t,uint32_t,uint32_t> b) {
        auto[aita,aitb,priorityA] = a;
        auto[bita,bitb,priorityB] = b;
        return priorityA > priorityB;

    });
    for(auto[start,end,priority]:parentesis_data){
        temp_AS_vec.clear();
        temp_MD_vec.clear();
        for(uint32_t i=start+1;i!=end;i++){
            if(!(NumExpr.Relations.size()<i)){
                if (seen.find(i-1) == seen.end()) {
                seen.insert(i-1);
            
                operations op = NumExpr.Relations[i-1];
                push_to_op_vec<uint32_t>(op,temp_AS_vec,temp_MD_vec,i-1);
                }
            }
            

        }

        for(auto i:temp_MD_vec){

            result.push_back(i);
        }
        for(auto i:temp_AS_vec){

            result.push_back(i);
        }

    }
    temp_AS_vec.clear();
    temp_MD_vec.clear();
    int start = 0;
    int end = NumExpr.Relations.size()-1;


    for (int i = start; i <= end; i++) {
        if (seen.find(i) == seen.end()) {
        operations op = NumExpr.Relations[i];
        push_to_op_vec<uint32_t>(op,temp_AS_vec,temp_MD_vec,i);
        }
    }
    for(auto i:temp_MD_vec){
        result.push_back(i);
    }
    for(auto i:temp_AS_vec){
        result.push_back(i);
    }
    //result = removeDuplicates<uint32_t>(result);
    return result;

};

#if 0
   auto AddNumRelationPriorityElement = [&](operations a,uint32_t id){

        if(a==operations::add || a==operations::subtract){
        insertItemAtPosition<uint32_t>(NumExpr.RelationPriority,NumExpr.RelationPriority.size(),id);}
        if(a==operations::divide || a == operations::multiply){
            insertItemAtPosition<uint32_t>(NumExpr.RelationPriority,DM_idx,id);
            DM_idx++;
            
        }
    };
#endif

//interpreter function
//interpreter function
//interpreter function
//interpreter function
template <typename T>
std::pair<T,NumExprStruct<T>> Interpret(std::string input){
    temp_AS_MD_vecs tempVecs;
    tempVecs.temp1.reserve(50);
    tempVecs.temp2.reserve(50);

    NumExprStruct<T> NumExpr;
    NumExpr.Numbers.reserve(50);
    NumExpr.Relations.reserve(50);
    uint8_t InNumSubexprStatement = 0;
    uint32_t DM_idx=0;
    std::vector<uint32_t> parentesis_record;
    parentesis_record.reserve(50);
    
    //start, end, priority
    std::vector<std::tuple<uint32_t,uint32_t,uint32_t>> parentesis_data;
    
    parentesis_data.reserve(50);

    uint32_t parentesis_priority = 0;
 


    auto processNumber = [&](char num){
        if(InNumSubexprStatement){
            int64_t numb = NumExpr.Numbers.back();
            std::string numstr = std::to_string(numb);
            std::string res = numstr + num;
            NumExpr.Numbers.back() = std::stoll(res);
            
            
        }
        if(!InNumSubexprStatement){
            InNumSubexprStatement = 1;
            std::string a = {num,0};
            NumExpr.Numbers.push_back(std::stoll(a));
        }
        




    };
    for(char i:input){
        switch(i){
            case ' ':
                InNumSubexprStatement = 0;
                break;

            case '0':
                processNumber('0');
                break;

            case '1':
                processNumber('1');
                break;

            case '2':
                processNumber('2');
                break;

            case '3':
                processNumber('3');
                break;

            case '4':
                processNumber('4');
                break;

            case '5':
                processNumber('5');
                break;
            
            case '6':
                processNumber('6');
                break;

            case '7':
                processNumber('7');
                break;

            case '8':
                processNumber('8');
                break;

            case '9':
                processNumber('9');
                break;

            case '+':
                InNumSubexprStatement = 0;
                NumExpr.Relations.push_back(operations::add);
                if (NumExpr.Relations.size() != NumExpr.Numbers.size()){
                    std::cout << "invalid syntax";
                    goto stop;
                }
                break;

            case '-':
                InNumSubexprStatement = 0;
                NumExpr.Relations.push_back(operations::subtract);
                if (NumExpr.Relations.size() != NumExpr.Numbers.size()){
                    std::cout << "invalid syntax";
                    goto stop;
                }
                break;
            case '*':
                InNumSubexprStatement = 0;
                NumExpr.Relations.push_back(operations::multiply);
                if (NumExpr.Relations.size() != NumExpr.Numbers.size()){
                    std::cout << "invalid syntax";
                    goto stop;
                }
                break;
            case '/':
                InNumSubexprStatement = 0;
                NumExpr.Relations.push_back(operations::divide);
                if (NumExpr.Relations.size() != NumExpr.Numbers.size()){
                    std::cout << "invalid syntax";
                    goto stop;
                }
                break;

            case '(':
                parentesis_data.emplace_back(NumExpr.Numbers.size(),UINT32_MAX,parentesis_priority);
                parentesis_record.emplace_back(parentesis_data.size()-1);
                parentesis_priority++;
                break;
            case ')':
                {
                    parentesis_priority--;
                    auto&[first,last,priority]= parentesis_data.at(parentesis_record.back());
                    last = NumExpr.Numbers.size();
                    parentesis_record.pop_back();
                }
                break;

            default:
                std::cout << "invalid character";
                break;

        }
    
    }
    {
    NumExpr.RelationPriority = calculate_relation_priority(NumExpr,parentesis_data,tempVecs);

    }
return std::pair<T,NumExprStruct<T>>(CalculateNumExprStatement<T>(NumExpr),NumExpr);

stop:

    return std::pair<T,NumExprStruct<T>>(0,NumExpr);

}

int main(){
    std::string input;
    std::getline(std::cin,input);

    

    auto [result,NumExpr] = Interpret<double>(input);
    std::cout << result << "\n";


    return 0;
}