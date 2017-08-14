#include <iostream>

char char1;
char char2;
char char3;
wchar_t char4; // wide character

int main(int argc, const char * argv[]) {
    char1 = 'a';
    char2 = 'b';
    char3 = 'c';
    char4 = L'☀︎';
    
    std::cout << char1 << " " << char2 << " " << char3 << " " << char4 << "\n";
    
    return 0;
}
