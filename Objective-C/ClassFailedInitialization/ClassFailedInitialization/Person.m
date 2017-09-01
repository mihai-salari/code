#import "Person.h"

@implementation Person

- (instancetype)init {
    if (self = [super init]) {
        _array1 = [[NSMutableArray alloc] init];
        
        if (_array1 == nil) {
            // Now allow in latest Xcode
            // [self release];
            return nil;
        }
        
        _array2 = [[NSArray alloc] initWithContentsOfFile:@"/tmp/foo.txt"];
        
        if (_array2 == nil) {
            //[self release];
            return nil;
        }
    }
    
    return self;
}

- (void)dealloc {
    NSLog(@"deallocating Person");
    
    //[super dealloc];
}

@end
