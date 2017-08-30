#include <stdio.h>

int functionalSquareOf(int number);

int main(int argc, const char * argv[]) {
    
    return 0;
}

int functionalSquareOf(int number) {
    static int count = 0;
    int list[number];
    
    list[count] = count * count;
    
    if (number == 0) {
        return list[number - 1];
    }
    
    functionalSquareOf(number - 1);
}
