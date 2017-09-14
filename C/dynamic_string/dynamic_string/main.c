#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    // Dynamic string using asprintf
    
    char *fullName;
    
    asprintf(&fullName, "Albert Einstein");
    printf("%s\n", fullName);
    free(fullName);
    
    int total = 100;
    float ratio = 1.123;
    char *result;
    
    asprintf(&result, "total: %i, ratio: %f", total, ratio);
    printf("%s\n", result);
    free(result);
    
    return 0;
}
