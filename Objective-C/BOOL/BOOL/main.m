#import <Foundation/Foundation.h>

BOOL areIntegersDifferent(int first, int second) {
    if (first == second) {
        return (NO);
    } else {
        return (YES);
    }
}

NSString *boolString(BOOL yesNo) {
    if (yesNo == NO) {
        return(@"NO");
    } else {
        return(@"YES");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    }
    
    return 0;
}
