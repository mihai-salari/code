#include <iostream>
#include <string>

std::string firstName;
std::string lastName;
std::string fullName;
std::string newName;

char firstCharacter;

int main(int argc, const char * argv[]) {
    firstName = "Foo";
    lastName = "Bar";
    fullName = firstName + " " + lastName;
    
    std::cout << "Full Name = " << fullName << "\n";
    
    firstCharacter = firstName.at(0);
    
    std::cout << "First character of first name is '" << firstCharacter << "'.\n";
    
    std::cout << "First name is " << firstName.length() << " characters long.\n";
    
    newName = fullName.substr(4, 3); // position, length
    
    std::cout << "New name is " << newName << "\n";
    
    return 0;
}
