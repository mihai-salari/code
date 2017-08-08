#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSPoint somePoint = NSMakePoint(1.2, 3.4);
        
        // somePoint is a C struct
        NSLog(@"%f", somePoint.x);
        NSLog(@"%f", somePoint.y);
        
        NSValue *pointValue = [NSValue valueWithPoint:somePoint]; // wrap the struct with NSValue
        NSArray *points = [NSArray arrayWithObject:pointValue]; // now we can add it to the array
        
        NSLog(@"%@", points);
    }
    
    return 0;
}
