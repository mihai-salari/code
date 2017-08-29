#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Circle.h"
#import "Rectangle.h"
#import "Egg.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *shapes[4];
        
        ShapeRect rect0 = {0, 0, 10, 30};
        Shape *shape0 = [[Shape alloc] init];
        // Using properties
        shape0.bounds = rect0;
        shape0.fillColor = kRed;
        shape0.shapeType = kCircle;
        shapes[0] = shape0;
        
        ShapeRect rect1 = {0, 0, 10, 30};
        shapes[1] = [Circle new];
        // Using normal setter methods
        [shapes[1] setBounds:rect1];
        [shapes[1] setFillColor:kRed];
        [shapes[1] setShapeType:kCircle];
        
        for (int i = 0; i < 3; i++) {
            id shape = shapes[i];
            [shape draw];
        }
        
    }
    
    return 0;
}
