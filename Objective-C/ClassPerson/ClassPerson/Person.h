#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    // Instance variables
    float _heightInMeters;
    int _weightInKilos;
}

// Instance methods
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;
- (float)bodyMassIndex;

@end
