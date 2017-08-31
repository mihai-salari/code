#import "Atom.h"

@implementation Atom

- (instancetype)init {
    if ((self = [super init])) {
        _chemicalElement = @"None"; // We access the instance variable here, because 'self' is not with us ;)
    }
    
    return self;
}

- (NSUInteger)massNumber {
    return 0;
}

#pragma mark - Writer protocol

- (void)writeToFile:(NSFileHandle *)file {
    NSData *data = [self.chemicalElement dataUsingEncoding:NSUTF8StringEncoding];
    
    [file writeData:data];
    [file closeFile];
}

@end
