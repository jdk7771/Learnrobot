#include <iostream>

class  Single_ins
{
private:
    Single_ins(/* args */){
        std::cout<<"以创建实力"<<std::endl;
    }
    ~ Single_ins(){
        std::cout<<"已删除实例"<<std::endl;
        }
public:
    static Single_ins* ins(){
        static Single_ins instance;
        return &instance;
    }

};

int main(int argc, char const *argv[])
{
    
    Single_ins* inss = Single_ins::ins();
    inss->ins();
    return 0;
}

main()
{

    return 0 ;
}
