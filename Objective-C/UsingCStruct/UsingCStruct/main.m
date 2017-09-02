#import <Foundation/Foundation.h>

struct SomeStruct {
    int a;
    int b;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct SomeStruct *foo;
        
        foo->a = 10;
        foo->b = 20;
        
    }
    
    return 0;
}
