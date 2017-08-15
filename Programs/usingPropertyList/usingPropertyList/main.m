#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *persons = [[NSMutableArray alloc] init];
        NSMutableDictionary *person;
        
        person = [NSMutableDictionary dictionary];
        [person setObject:@"Foo Bar" forKey:@"name"];
        [person setObject:@48 forKey:@"age"];
        [persons addObject:person];
        
        person = [NSMutableDictionary dictionary];
        [person setObject:@"John Appleseed" forKey:@"name"];
        [person setObject:@28 forKey:@"age"];
        [persons addObject:person];
        
        [persons writeToFile:@"person.plist" atomically:YES];
    }
    
    return 0;
}
