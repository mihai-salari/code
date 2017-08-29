#import <Foundation/Foundation.h>
#import "Shape.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *shapes[3];
        
        Shape *shape0 = [[Shape alloc] init];
        ShapeRect rect0 = {0, 0, 10, 30};
        shape0.bounds = rect0;
        shape0.fillColor = kRed;
        shape0.shapeType = kCircle;
        shapes[0] = shape0;
        
        for (int i = 0; i < 3; i++) {
            id shape = shapes[i];
            [shape draw];
        }
        
    }
    
    return 0;
}
