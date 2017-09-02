#import <Foundation/Foundation.h>

typedef struct SomeStruct {
    int a;
    int b;
} SomeStruct;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SomeStruct *foo = (SomeStruct *)malloc(sizeof(SomeStruct));
        
        foo->a = 10;
        foo->b = 20;
        
        printf("a is %d\n", foo->a);
        printf("b is %d\n", foo->b);
        
        free(foo);
        
    }
    
    return 0;
}
