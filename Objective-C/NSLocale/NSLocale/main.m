#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:@"currency"];
        NSString *currency2 = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
        NSLog(@"Money is %@", currency2);
    }
    
    return 0;
}
