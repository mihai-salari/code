#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *r = [Rectangle new];
        
        [r setWidth:20];
        [r setHeight:5];
        
        NSLog(@"Rectangle r with size of %i x %i, area = %i", [r width], [r height], [r area]);
        NSLog(@"Rectangle r with size of %i x %i, perimeter = %i", [r width], [r height], [r perimeter]);
    }
    
    return 0;
}
