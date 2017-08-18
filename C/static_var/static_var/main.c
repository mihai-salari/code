#include <stdio.h>

void static_function() {
    static int number = 1; // the value will remains after function returned
    
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
