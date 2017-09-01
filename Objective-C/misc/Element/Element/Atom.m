#import "Atom.h"

@implementation Atom

- (instancetype)init {
    if ((self = [super init])) {
        _chemicalElement = @"None"; // We access the instance variable here, because 'self' is not with us ;)
    }
    
    return self;
}

- (NSUInteger)massNumber {
    return self.protons + self.neutrons;
}

- (void)logInfo {
    NSLog(@"\n%@:\n\tatomic symbol = %@\n\tatomic number = %lu\n\tmass number = %lu", self.chemicalElement, self.atomicSymbol, self.protons, [self massNumber]);
}

- (void)logInfoWith:(NSString *)info {
    if ([info length] == 0) {
        [self logInfo];
    } else {
        NSLog(@"\n%@:\n\t%@\n\tatomic symbol = %@\n\tatomic number = %lu\n\tmass number = %lu", self.chemicalElement, info, self.atomicSymbol, self.protons, [self massNumber]);
    }
}

#pragma mark - Writer protocol

- (void)writeToFile:(NSFileHandle *)file {
    NSData *data = [self.chemicalElement dataUsingEncoding:NSUTF8StringEncoding];
    
    [file writeData:data];
    [file closeFile];
}

@end
