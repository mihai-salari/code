#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Logger *logger = [[Logger alloc] init];
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/files/205/205-h/205-h.htm"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                                   target:logger
                                                                 selector:@selector(updateLastTime:)
                                                                 userInfo:nil
                                                                  repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    
    return 0;
}
