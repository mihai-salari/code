#import <Foundation/Foundation.h>
#import "Address.h"
#import "OrderItem.h"
#import "OrderEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Address *a = [Address new];        
//        OrderItem *oi = [OrderItem new];
        OrderEntry *entry = [[OrderEntry alloc] initWithOrderID:@"123"];
        
        NSLog(@"%@", entry);
    }
    
    return 0;
}
