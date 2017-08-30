#include <stdio.h>

void callMeAgain() {
    static int count = 0;
    
    count += 1;
    
    printf("You call me %d time%c.\n", count, count > 1 ? 's' : ' ');
}

int main(int argc, const char * argv[]) {
    callMeAgain();
    callMeAgain();
    callMeAgain();
    callMeAgain();
    callMeAgain();
    callMeAgain();
    
    return 0;
}
