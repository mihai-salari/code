#include <iostream>
#include <string>

int age;

std::string name;

int main(int argc, const char * argv[]) {
    std::cout << "Enter your age: ";
    std::cin >> age;
    
    std::cout << "age = " << age << "\n";
    
    // reading string
    std::getline(std::cin, name);
    
    std::cout << "name = " << name << "\n";
    
    return 0;
}
