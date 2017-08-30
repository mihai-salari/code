#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject

- (int)width;
- (void)setWidth:(int)w;
- (int)height;
- (void)setHeight:(int)h;

- (void)setWidth:(int)w andHeight:(int)h;

- (int)area;
- (int)perimeter;

- (XYPoint *)origin;
- (void)setOrigin:(XYPoint *)pt;

@end
