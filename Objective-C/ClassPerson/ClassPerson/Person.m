#import "Person.h"

@implementation Person

- (float)heightInMeters {
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h {
    _heightInMeters = h;
}

- (int)weightInKilos {
    return _weightInKilos;
}

- (void)setWeightInKilos:(int)w {
    _weightInKilos = w;
}

- (float)bodyMassIndex {
    return _weightInKilos / (_heightInMeters * _heightInMeters);
}

@end
