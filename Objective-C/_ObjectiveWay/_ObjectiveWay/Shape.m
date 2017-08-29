#import "Shape.h"

@implementation Shape

- (void)draw {
    NSLog(@"drawing a %@ at (%d %d %d %d) in %@", [self shapeTypeOf:self.shapeType], self.bounds.x, self.bounds.y, self.bounds.width, self.bounds.height, [self colorNameOf:self.fillColor]);
}

- (NSString *)colorNameOf:(ShapeColor)color {
    switch (color) {
        case kRed:
            return @"red";
            break;
        case kGreen:
            return @"green";
            break;
        case kBlue:
            return @"blue";
            break;
        default:
            return @"no idea";
            break;
    }
}

- (NSString *)shapeTypeOf:(ShapeType)shape {
    switch (shape) {
        case kCircle:
            return @"circle";
            break;
        case kRectangle:
            return @"rectangle";
            break;
        case kEgg:
            return @"egg";
            break;
        default:
            break;
    }
}

@end
