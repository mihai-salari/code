#import <Foundation/Foundation.h>
#import "Human.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Human *man = [Human new];
        [man print];
    }
    
    return 0;
}
