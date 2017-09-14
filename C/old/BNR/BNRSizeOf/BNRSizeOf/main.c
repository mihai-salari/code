#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    char *name = "Foo";
    int *age = NULL;
    
    printf("sizeof int is %zu bytes\n", sizeof(int));
    printf("sizeof int * is %zu bytes\n", sizeof(int *));
    
    printf("sizeof var name is %zu bytes\n", sizeof(name)); // Note this is a pointer, not the data itself!
    printf("sizeof var age is %zu bytes\n", sizeof(age));
    
    printf("sizeof float is %zu bytes\n", sizeof(float));
    printf("sizeof double is %zu bytes\n", sizeof(double));
    
    printf("sizeof short is %zu bytes\n", sizeof(short));
    
    return 0;
}
