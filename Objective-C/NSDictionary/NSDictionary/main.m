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
        
        NSDictionary *innerPlanetsMoons = @{
                                            @"Mercury": @[], // empty array
                                            @"Venus": @[],
                                            @"Earth": @[@"Luna"],
                                            @"Mars": @[@"Deimos", @"Phobos"],
                                            };
        
        NSMutableDictionary *names = [[NSMutableDictionary alloc] init];
        [names setObject:@"Foo Bar" forKey:@"foo"];
        [names setObject:@"Bar Foo" forKey:@"bar"];
        
        NSLog(@"Names: %@", names);
        
        NSLog(@"Key 'foo' has value '%@'", [names objectForKey:@"foo"]);
    }
    
    return 0;
}
