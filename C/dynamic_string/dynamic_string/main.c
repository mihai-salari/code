#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    char *fullName;
    
    asprintf(&fullName, "Albert Einstein");
    
    printf("%s\n", fullName);
    
    free(fullName);
    
    return 0;
}
