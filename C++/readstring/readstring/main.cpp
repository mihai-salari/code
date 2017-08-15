#include <iostream>
#include <string>

std::string name;

int main(int argc, const char * argv[]) {
    std::cout << "Enter your name: ";
    std::getline(std::cin, name);
    
    std::cout << "name = " << name << "\n";
    
    return 0;
}
