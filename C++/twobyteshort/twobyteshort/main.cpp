#include <iostream>

short zip; // two bytes, range from -32768 to 32767

int main(int argc, const char * argv[]) {
    zip = 32768; // overflow to -32768
    std::cout << zip << "\n";
    
    zip = 32769; // overflow to -32767
    std::cout << zip << "\n";
    
    zip = 65536; // overflow to 0
    std::cout << zip << "\n";
    
    zip = 92126;
    std::cout << zip << "\n";
    
    /*
     
     92126 - 32767 = 59359 (扣掉可以使用的32767個數字)
     59359 - 32768 = 26591 (再扣掉可以使用的32768個負數字)
     26591 - 1 = 26590 (先把0扣掉，剩下的就是答案)
     
     */
    
    return 0;
}
