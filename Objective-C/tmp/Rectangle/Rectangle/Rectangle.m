#import "Rectangle.h"

@implementation Rectangle {
    int width;
    int height;
    XYPoint *origin;
}

- (int)width {
    return width;
}

- (void)setWidth:(int)w {
    width = w;
}

- (int)height {
    return height;
}

- (void)setHeight:(int)h {
    height = h;
}

- (void)setWidth:(int)w andHeight:(int)h {
    width = w;
    height = h;
}

- (int)area {
    return width * height;
}

- (int)perimeter {
    return (width * 2) + (height * 2);
}

- (void)setOrigin:(XYPoint *)pt {
    origin = pt;
}

- (XYPoint *)origin {
    return origin;
}

@end
