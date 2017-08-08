#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // If you know ahead of time how many elements you intend to add to the
        // array, it's more efficient for the array to allocate enough memory
        // to store all the elements in one go.
        NSMutableArray *names = [NSMutableArray arrayWithCapacity:100];
        
        [names addObject:@"Foo"];
        [names addObject:@"Bar"];
        [names replaceObjectAtIndex:0 withObject:@"Bar"];
        
        NSLog(@"names is %@", names);
    }
    
    return 0;
}
