#import <Foundation/Foundation.h>

typedef struct SomeStruct {
    int a;
    int b;
} SomeStruct;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SomeStruct *foo = malloc(sizeof(SomeStruct));
        
        foo->a = 10;
        foo->b = 20;
        
    }
    
    return 0;
}
