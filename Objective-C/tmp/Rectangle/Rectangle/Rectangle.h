#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

- (int)width;
- (void)setWidth:(int)w;
- (int)height;
- (void)setHeight:(int)h;

- (int)area;
- (int)perimeter;

@end
