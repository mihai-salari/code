#import <Foundation/Foundation.h>

typedef enum {
    kCircle,
    kRectangle,
    kEgg
} ShapeType;

typedef enum {
    kRed,
    kGreen,
    kBlue
} ShapeColor;

typedef struct {
    int x;
    int y;
    int width;
    int height;
} ShapeRect;

typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape shapes[3];
        
        Sh
    }
    
    return 0;
}
