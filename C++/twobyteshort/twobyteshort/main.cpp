#include <iostream>

short zip; // two bytes, range from -32768 to 32767

int main(int argc, const char * argv[]) {
    zip = 32768; // overflow to -32768
    std::cout << zip << "\n";
    
    zip = 32769; // overflow to -32767
    std::cout << zip << "\n";
    
    zip = 59359;
    std::cout << zip << "\n";
    
    zip = 92126;
    /*
     92126 - 32767 = 59359
     59359 - 32768 = 26591
    std::cout << zip << "\n";
     */
    
    return 0;
}
