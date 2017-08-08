#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *a1 = [NSArray arrayWithObject:@"A"];
        NSArray *a2 = [NSArray arrayWithObjects:@"B", @"C", @"D", nil];
        
        NSString *cArray[] = {@"Cat", @"Dog", @"Mouse"};
        NSArray *animal = [NSArray arrayWithObjects:cArray count:3];
        
        NSArray *xmlFile = [NSArray arrayWithContentsOfURL:[NSURL URLWithString:@"http://choonsiong.com/public/tmp/plist.txt"]];
        
        NSLog(@"xmlFile is: %@", xmlFile);
        
        NSLog(@"Last object in xmlFile is '%@'.", [xmlFile lastObject]);
        
        if ([xmlFile containsObject:@"Cat"]) {
            unsigned long index = [xmlFile indexOfObject:@"Cat"];
            NSLog(@"'cat' is inside xmlFile at index %lu", index);
        }
    }
    
    return 0;
}
