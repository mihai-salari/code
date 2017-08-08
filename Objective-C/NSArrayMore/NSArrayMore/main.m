#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *a1 = [NSArray arrayWithObject:@"A"];
        NSArray *a2 = [NSArray arrayWithObjects:@"B", @"C", @"D", nil];
        
        NSString *cArray[] = {@"Cat", @"Dog", @"Mouse"};
        NSArray *animal = [NSArray arrayWithObjects:cArray count:3];
        
        NSArray *xmlFile = [NSArray arrayWithContentsOfURL:[NSURL URLWithString:@"http://choonsiong.com/public/tmp/foo.xml"]];
        
        NSLog(@"xmlFile is: %@", xmlFile);
    }
    
    return 0;
}
