#import <Foundation/Foundation.h>
#import "OrderEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Address *a = [Address new];
        //OrderItem *oi = [OrderItem new];
        
        NSString *a123 = @"a123";
        
        OrderEntry *entry = [[OrderEntry alloc] initWithOrderID:a123];
        
        a123 = nil; // to test the ARC
        
        NSLog(@"New order, ID = %@, item = %@", entry.orderID, entry.item.name);
        
        entry = nil;
        
        NSLog(@"%@", entry);

        // To test reference cycle, first remove the weak qualifier in OrderItem
        OrderEntry *newEntry = [[OrderEntry alloc] initWithOrderID:@"222"];
        newEntry.item.entry = newEntry;
        
        newEntry = nil; // introduce reference cycle, unless we use 'weak'
    }
    
    return 0;
}
