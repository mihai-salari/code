#include <iostream>

bool isRich;

int main(int argc, const char * argv[]) {
    isRich = true;
    
    if (isRich) {
        std::cout << "Yes, you are rich.\n";
    } else {
        std::cout << "Sorry, you are not rich.\n";
    }
    
    return 0;
}
