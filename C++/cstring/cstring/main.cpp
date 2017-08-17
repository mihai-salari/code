#include <iostream>

int main(int argc, const char * argv[]) {
    char name[4];
    
    name[0] = 'F';
    name[1] = 'o';
    name[2] = 'o';
    name[3] = '\0';
    
    std::cout << name << "\n";
    
    return 0;
}
