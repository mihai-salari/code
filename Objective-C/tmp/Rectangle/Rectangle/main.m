#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *r = [Rectangle new];
        
        [r setWidth:20];
        [r setHeight:5];
        
        NSLog(@"Rectangle r with size of %i x %i, area = %i", [r width], [r height], [r area]);
        NSLog(@"Rectangle r with size of %i x %i, perimeter = %i", [r width], [r height], [r perimeter]);
        
        XYPoint *pt = [XYPoint new];
        [pt setX:100 andY:200];
        
        Rectangle *rect = [Rectangle new];
        [rect setWidth:5 andHeight:8];
        
        [rect setOrigin:pt];
    }
    
    return 0;
}
