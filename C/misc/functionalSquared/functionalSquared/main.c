#include <stdio.h>

#define kNumber 99

int functionalSquareOf(int number, int *list);

int main(int argc, const char * argv[]) {
    int list[kNumber]; // empty list with size kNumber
    
    int answer = functionalSquareOf(kNumber, list);
    
    printf("square of %d = %d\n", kNumber, answer);
    
    return 0;
}

int functionalSquareOf(int number, int *list) {
    static int count = 1;
    
    list[count-1] = count * count; // store the squared of count into array
    
    if (count <= kNumber && number > 0) {
        count += 1;
        
        if (number != 1) {
            functionalSquareOf(number - 1, list);
        }
        
    }
    
    // to get the last element in the list
    return list[count-2];
}
