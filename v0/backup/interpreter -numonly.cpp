#include <iostream>
#include <string>
#include <vector>
#include <list>
#include <cstdlib>

template<typename T = uint64_t>
void insertItemAtPosition(std::list<T>& myList, int position, T value) {
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

enum class operations{
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
struct NumExprStruct{
    std::list<uint64_t> RelationPriority;
    std::vector<int64_t> Numbers;
    std::vector<operations> Relations;
};

struct NumProcHelp{
    NumProcHelp(int64_t val):value{val},replacer{UINT64_MAX}{

    }
    int64_t value;
    uint64_t replacer;
};

int64_t ExecuteOperation(operations operation,int64_t FirstNum,int64_t SecondNum){
    switch(operation){
        case operations::add:
            std::cout << FirstNum << " + " << SecondNum<<" = " << FirstNum +SecondNum << "\n";
            return FirstNum + SecondNum;
        case operations::subtract:
            std::cout << FirstNum << " - " << SecondNum<<" = " << FirstNum -SecondNum << "\n";
            return FirstNum -SecondNum;
        case operations::multiply:
            std::cout << FirstNum << " * " << SecondNum<<" = " << FirstNum *SecondNum << "\n";
            return FirstNum *SecondNum;
        case operations::divide:
            std::cout << FirstNum << " / " << SecondNum<<" = " << FirstNum /SecondNum << "\n";
            return FirstNum /SecondNum;

        default:
            std::cout << "error at : "<< __LINE__ << "\n"; 
            return 0;
    }
};

int64_t CalculateNumExprStatement(const NumExprStruct& NumExpr){
    std::cout << "\nProcessing Expression...\n";
    std::vector<NumProcHelp> Numbers;
    Numbers.reserve(NumExpr.Numbers.size());
    int64_t Result = 0;

    for(const uint64_t i:NumExpr.Numbers){
        Numbers.emplace_back(i);
    }
    for(const uint64_t idx:NumExpr.RelationPriority){
        
        uint64_t FirstNumIdx = idx;
        while(true){
            if(Numbers[FirstNumIdx].replacer != UINT64_MAX){
                FirstNumIdx = Numbers[FirstNumIdx].replacer;
            }
            else{
                break;
            }
        }

        uint64_t SecondNumIdx = idx+1;
        while(true){
            if(Numbers[SecondNumIdx].replacer != UINT64_MAX){
                SecondNumIdx = Numbers[SecondNumIdx].replacer;
            }
            else{
                break;
            }
        }

        operations operation =NumExpr.Relations[idx];
        int64_t FirstNum =Numbers[FirstNumIdx].value;
        int64_t SecondNum = Numbers[SecondNumIdx].value;
        Result = ExecuteOperation(operation,FirstNum,SecondNum);
        Numbers[FirstNumIdx].value = Result;
        Numbers[SecondNumIdx].replacer = FirstNumIdx;


    }
    std::cout << "\n";
    return Result;
}

int main(){
    
    std::string input;
    std::getline(std::cin,input);

    NumExprStruct NumExpr;

    NumExpr.Numbers.reserve(50);
    NumExpr.Relations.reserve(50);
    int InNumSubexprStatement = 0;


    auto AddNumRelationPriorityElement = [&](operations a,uint64_t id){
        static uint64_t DM_idx = 0;
        if(a==operations::add || a==operations::subtract){
        insertItemAtPosition(NumExpr.RelationPriority,NumExpr.RelationPriority.size(),id);}
        if(a==operations::divide || a == operations::multiply){
            insertItemAtPosition(NumExpr.RelationPriority,DM_idx,id);
            DM_idx+= 1;
        }
    };



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
                AddNumRelationPriorityElement(operations::add,NumExpr.Relations.size()-1);
                if (NumExpr.Relations.size() != NumExpr.Numbers.size()){
                    std::cout << "invalid syntax";
                    goto stop;
                }
                break;

            case '-':
                InNumSubexprStatement = 0;
                NumExpr.Relations.push_back(operations::subtract);
                AddNumRelationPriorityElement(operations::subtract,NumExpr.Relations.size()-1);
                if (NumExpr.Relations.size() != NumExpr.Numbers.size()){
                    std::cout << "invalid syntax";
                    goto stop;
                }
                break;
            case '*':
                InNumSubexprStatement = 0;
                NumExpr.Relations.push_back(operations::multiply);
                AddNumRelationPriorityElement(operations::multiply,NumExpr.Relations.size()-1);
                if (NumExpr.Relations.size() != NumExpr.Numbers.size()){
                    std::cout << "invalid syntax";
                    goto stop;
                }
                break;
            case '/':
                InNumSubexprStatement = 0;
                NumExpr.Relations.push_back(operations::divide);
                AddNumRelationPriorityElement(operations::divide,NumExpr.Relations.size()-1);
                if (NumExpr.Relations.size() != NumExpr.Numbers.size()){
                    std::cout << "invalid syntax";
                    goto stop;
                }
                break;

            default:
                std::cout << "invalid character";

        }
    }
    
stop:
    int64_t result = CalculateNumExprStatement(NumExpr);
    int idx = -1;
    for(const auto& i:NumExpr.Numbers){
        idx+=1;
        std::cout << i;
        if(idx<NumExpr.Relations.size()){
            std::cout << " " << operator_to_char(NumExpr.Relations.at(idx)) << " ";
        }
    }
    std:: cout << " = " << result<< "\n";


    return 0;
}