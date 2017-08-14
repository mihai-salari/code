#include <iostream>

float result;

int main(int argc, const char * argv[]) {
    result = 1 / 2; // 0
    std::cout << result << "\n";
    
    result = 1.0 / 2.0; // 0.5
    std::cout << result << "\n";
    
    return 0;
}
