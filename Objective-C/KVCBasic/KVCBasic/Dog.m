#import "Dog.h"

@implementation Dog {
    // Instance variables here will not be visible to any other class and subclass of Dog!
    int _number;
}

- (int)number {
    return self->_number;
}

- (void)setNumber:(int)number {
    self->_number = number;
}

@end
