#import "Dog.h"

@implementation Dog {
    // Instance variables here will not be visible to any other class and subclass of Dog!
    int _number;
}

- (id)initWithNumber:(int)number {
    self = [super init];
    
    if (self) {
        self->_number = number;
    }
    
    return self;
}

- (id)init {
    return [self initWithNumber:-1];
}

- (int)number {
    return self->_number;
}

//- (void)setNumber:(int)number {
//    self->_number = number;
//}

@end
