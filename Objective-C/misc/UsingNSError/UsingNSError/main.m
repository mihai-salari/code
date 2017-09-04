#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *error;
        NSData *data = nil;
        
        // trying to load a nonexistent file
        data = [NSData dataWithContentsOfFile:@"foo.txt"
                                      options:NSDataReadingUncached
                                        error:&error]; // pass the address of pointer variable
        
        // data == nil?
        if (data) {
            printf("data is not nil\n");
            NSLog(@"Everything is fine ;)");
        } else {
            printf("data is nil\n");
            NSLog(@"An error occurred: %@", [error localizedDescription]);
            NSLog(@"Error Domain = %@", [error domain]);
            NSLog(@"Error Code = %lu", [error code]);
            NSLog(@"localizedFailureReason = %@", [error localizedFailureReason]);
            NSLog(@"localizedRecoverySuggestion = %@", [error localizedRecoverySuggestion]);
            NSLog(@"localizedRecoveryOptions = %@", [error localizedRecoveryOptions]);
            
            // Examining userInfo dictionary
            NSLog(@"userInfo = %@", [error userInfo]);
            
            NSDictionary *userInfo = [error userInfo];
            NSString *errorMsg;
            
            if (userInfo && [userInfo objectForKey:NSUnderlyingErrorKey]) {
                NSError *underlyingError = [userInfo objectForKey:NSUnderlyingErrorKey];
                errorMsg = [underlyingError localizedDescription];
            } else {
                errorMsg = [error localizedDescription];
            }
            
            NSLog(@"Error: %@", errorMsg);
        }
    }
    
    return 0;
}
