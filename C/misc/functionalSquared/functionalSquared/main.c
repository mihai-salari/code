#include <stdio.h>

#define kNumber 10

// The original intention is to write with functional programming, but at the
// end it becomes whatever you see below...

int functionalSquareOf(int number, int *list);

int main(int argc, const char * argv[]) {
    int list[kNumber]; // empty list with size kNumber
    
    int answer = functionalSquareOf(kNumber, list); // passing with a pointer
    
    printf("square of %d = %d\n", kNumber, answer);
    
    return 0;
}

int functionalSquareOf(int number, int *list) { // pointer to an array, so we can modify its content from all calls
    static int count = 1; // count start with 1 because we want to store 1 x 1 into array[0]
    
    // so that we get list[0] at the first round with 1 * 1 and so on...
    list[count-1] = count * count; // store the squared of count into array
    
    // I am sad that we have to use a global var here...
    if (count < kNumber && number > 0) {
        // note that even count < kNumber here, still when we enter
        // the last loop, we are able to get the value of count * count
        // correctly because it is evaluate before this
        
        //printf("count is %d\n", count);
        
        count += 1;
        
        functionalSquareOf(number - 1, list);
    }
    
    // to get the last element in the list
    return list[count-1];
}
