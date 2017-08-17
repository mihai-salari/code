#include <iostream>
#include <cstring>

int main(int argc, const char * argv[]) {
    char name[4];
    char anotherName[4];
    
    name[0] = 'F';
    name[1] = 'o';
    name[2] = 'o';
    name[3] = '\0';
    
    std::cout << name << "\n";
    
    // Illegal assignment
    // anotherName = name;
    
    // Use strcpy
    std::strcpy(anotherName, name);
    
    std::cout << anotherName << "\n";
    
    char firstName[] = "Foo";
    char lastName[] = "Bar";
    char fullName[100];
    
    strcpy(fullName, firstName);
    strcat(fullName, " ");
    strcat(fullName, lastName);
    
    std::cout << fullName << "\n";
    
    return 0;
}
