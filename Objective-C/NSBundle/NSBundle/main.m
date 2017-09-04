#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSBundle *myBundle = [NSBundle mainBundle];
        NSString *myBundlePath = [myBundle pathForResource:@"Info" ofType:@"plist"];
        NSLog(@"myBundlePath: %@", myBundlePath);
        
        // Dynamically loading a framework object
        // this code is for demonstration purpose only...
        NSBundle *testBundle = [NSBundle bundleWithPath:@"/Test.bundle"];
        id tester = [[[testBundle classNamed:@"Tester"] alloc] init];
    }
    
    return 0;
}
