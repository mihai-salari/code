#include <iostream>

signed char age; // very short integer

int main(int argc, const char * argv[]) {
    age = 37;
    
    std::cout << "Age is " << age << "\n"; // c++ will treat char as character
    std::cout << "Age is " << static_cast<int>(age) << "\n"; // cast it so that c++ treats it as an integer
    
    return 0;
}
