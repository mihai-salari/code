#include <stdio.h>

// If use the 'static' with a global variable, it will only be visible
// within the same file. Therefore in a larger program, multiple global vars
// with same name won't collide.
static int count;

void static_function() {
    // If you want a local variable to keep its value even after
    // the function ends, use the 'static' keyword
    static int number = 1;
    
    printf("This number has been called %i times\n", number);
    
    number += 1;
}

int main(int argc, const char * argv[]) {
    static_function();
    static_function();
    static_function();
    static_function();
    static_function();
    
    return 0;
}

/*

 This number has been called 1 times
 This number has been called 2 times
 This number has been called 3 times
 This number has been called 4 times
 This number has been called 5 times
 Program ended with exit code: 0

*/
