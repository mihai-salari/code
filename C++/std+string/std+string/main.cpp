#include <iostream>
#include <string>

std::string firstName;
std::string lastName;
std::string fullName;

int main(int argc, const char * argv[]) {
    firstName = "Foo";
    lastName = "Bar";
    fullName = firstName + " " + lastName;
    
    std::cout << "Full Name = " << fullName << "\n";
    
    return 0;
}
