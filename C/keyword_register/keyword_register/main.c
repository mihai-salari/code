#include <stdio.h>

int main(int argc, const char * argv[]) {
    // The compiler may choose to store 'count' in a register (for faster access)
    // rather than in a RAM. However, the compiler is not obligated to honor
    // the hint...
    register int count;
    
    count = 0;
    
    while (count < 100000) {
        printf("%d ", count);
        count++;
    }
    
    return 0;
}
