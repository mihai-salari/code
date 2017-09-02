#import "Address.h"

@implementation Address

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"Initializing Address object...");
        
        return self;
    }
    
    return nil;
}

- (void)dealloc {
    NSLog(@"Deallocating Addess object...");
}

@end
