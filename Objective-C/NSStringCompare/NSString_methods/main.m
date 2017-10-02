#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *foo = @"Foo";
        NSString *bar = @"Bar";
        
        NSComparisonResult result = [foo compare:bar options:NSCaseInsensitiveSearch];
        
        switch (result) {
            case -1:
                printf("NSOrderedAscending\n");
                break;
            case 0:
                printf("NSOrderedSame\n");
                break;
            case 1:
                printf("NSOrderedDescending\n");
                break;
            default:
                break;
        }
    }
    
    return 0;
}
