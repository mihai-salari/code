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
        BOOL areTheyDifferent;
        areTheyDifferent = areIntegersDifferent(8, 8);
        
        NSLog(@"Are %d and %d different? %@", 8, 8, boolString(areTheyDifferent));
        
        areTheyDifferent = areIntegersDifferent(42, 38);
        NSLog(@"Are %d and %d different? %@", 42, 38, boolString(areTheyDifferent));
    }
    
    return 0;
}
