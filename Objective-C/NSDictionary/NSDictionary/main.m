#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *numberOfMoons = @{
                                        @"Mercury": @0,
                                        @"Venus": @0,
                                        @"Earth": @1,
                                        @"Mars": @2,
                                        @"Jupiter": @67,
                                        @"Saturn": @62,
                                        @"Uranus": @27,
                                        @"Neptune": @13,
                                        };
        
        NSLog(@"Jupiter has %@ moons.", numberOfMoons[@"Jupiter"]);
    }
    
    return 0;
}
