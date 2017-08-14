#include <iostream>

short zip; // two bytes, range from -32768 to 32767

int main(int argc, const char * argv[]) {
    zip = 92126;
    
    std::cout << zip << "\n";
    
    return 0;
}
