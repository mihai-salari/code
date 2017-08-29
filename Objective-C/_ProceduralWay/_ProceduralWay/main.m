#import <Foundation/Foundation.h>

// To add a new shape, e.g. kTriangle, we have to modify several places...

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

void drawShape(Shape shapes[], int count);

void drawCircle(ShapeRect bounds, ShapeColor fillColor);
void drawRectangle(ShapeRect bounds, ShapeColor fillColor);
void drawEgg(ShapeRect bounds, ShapeColor fillColor);

NSString *colorName(ShapeColor colorName);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape shapes[3];
        
        ShapeRect rect0 = {0, 0, 10, 30};
        shapes[0].type = kCircle;
        shapes[0].fillColor = kRed;
        shapes[0].bounds = rect0;
        
        ShapeRect rect1 = {30, 40, 50, 60};
        shapes[1].type = kRectangle;
        shapes[1].fillColor = kGreen;
        shapes[1].bounds = rect1;
        
        ShapeRect rect2 = {15, 18, 37, 29};
        shapes[2].type = kEgg;
        shapes[2].fillColor = kBlue;
        shapes[2].bounds = rect2;
        
        drawShape(shapes, 3);
    }
    
    return 0;
}

void drawShape(Shape shapes[], int count) {
    for (int i = 0; i < count; i++) {
        switch (shapes[i].type) {
            case kCircle:
                drawCircle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kEgg:
                drawEgg(shapes[i].bounds, shapes[i].fillColor);
                break;
        }
    }
}

void drawCircle(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a circle...");
}

void drawRectangle(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a rectangle...");
}

void drawEgg(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing an egg...");
}

NSString *colorName(ShapeColor colorName) {
    switch (colorName) {
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
