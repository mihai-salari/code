#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *imgURL = [NSURL URLWithString:@"https://pbs.twimg.com/media/DGztQU9XkA8Wl8I.jpg"];
        NSURLRequest *request = [NSURLRequest requestWithURL:imgURL];
        NSError *error = nil;
        
        NSData *imgData = [NSURLConnection sendSynchronousRequest:request
                                                returningResponse:NULL
                                                            error:&error];
        
        if (!imgData) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The image file is %lu bytes", [imgData length]);
    }
    
    return 0;
}
