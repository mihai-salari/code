#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = nil;
        
        if (name == nil) {
            @throw [NSException exceptionWithName:NSInvalidArgumentException
                                           reason:@"name is nil"
                                         userInfo:nil];
        }
    }
    
    return 0;
}
