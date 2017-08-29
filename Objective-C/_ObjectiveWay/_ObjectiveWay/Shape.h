#import <Foundation/Foundation.h>

@interface Shape : NSObject

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

@property ShapeColor fillColor;
@property ShapeRect bounds;

- (void)draw;

@end
