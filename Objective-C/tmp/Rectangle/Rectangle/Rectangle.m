#import "Rectangle.h"

@implementation Rectangle {
    int width;
    int height;
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

- (int)area {
    return width * height;
}

- (int)perimeter {
    return (width * 2) + (height * 2);
}

@end
