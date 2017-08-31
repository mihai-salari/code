#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setName:@"Foo Bar"];
        
        // Execute with method call
        
        int i;
        
        /*
        for (i = 0; i < 1000000; i++) {
            printf("%d: ", i);
            [p printMyName];
        }*/
        
        IMP printMyNameIMP = [p methodForSelector:@selector(printMyName)];
        
        // Execute with direct function call
        
        for (i = 0; i < 1000000; i++) {
            printf("%d: ", i);
            printf(*printMyNameIMP);
            printf("\n");
        }
        
        //*printMyNameIMP(p, @selector(printMyName));
    }
    
    return 0;
}
