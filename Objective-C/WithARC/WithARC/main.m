#import <Foundation/Foundation.h>
#import "OrderEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Address *a = [Address new];
        //OrderItem *oi = [OrderItem new];
        OrderEntry *entry = [[OrderEntry alloc] initWithOrderID:@"123"];
        
        NSLog(@"New order, ID = %@, item = %@", entry.orderID, entry.item.name);
        
        //NSLog(@"%@", entry);
    }
    
    return 0;
}
