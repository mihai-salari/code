#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *personListFile = @"/Users/choonsiong/Code/Programs/usingPropertyList/person.plist";
        
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
        
        // write to plist file
        [persons writeToFile:personListFile atomically:YES];
        
        // read from plist file
        NSArray *personList = [NSArray arrayWithContentsOfFile:personListFile];
        
        for (NSDictionary *element in personList) {
            NSLog(@"element is %@", element);
            NSLog(@"element name is %@", [element objectForKey:@"name"]);
            NSLog(@"element age is %@", [element objectForKey:@"age"]);
        }
    }
    
    return 0;
}
