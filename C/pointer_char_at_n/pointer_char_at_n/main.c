#include <stdio.h>

int main(int argc, const char * argv[]) {
    // names is an array of pointer to char
    char *names[] = { "Miller", "Jones", "Anderson" };
    
    printf("%c\n", names[1][2]); // 2nd element, 3rd character
    
    // *(names+1) -> "Jones"
    // *("Jones"+2) -> 'n'
    printf("%c\n", *(*(names+1)+2));
    
    return 0;
}
