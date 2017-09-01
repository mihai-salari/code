#import "Atom.h"

@interface Hydrogen : Atom

- (id)initWithNeutrons:(NSUInteger)neutrons;

#pragma mark - Class Factory Init

+ (id)hydrogenWithNeutrons:(NSUInteger)neutrons;

@end
