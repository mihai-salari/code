#import <Foundation/Foundation.h>
#import "OrderEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Address *a = [Address new];
        //OrderItem *oi = [OrderItem new];
        
        NSString *a123 = @"a123";
        
        OrderEntry *entry = [[OrderEntry alloc] initWithOrderID:a123];
        entry = [[OrderEntry alloc] initWithOrderID:@"222" orderItem:@"3 Sausages"];
        
        a123 = nil; // to test the ARC
        
        NSLog(@"New order, ID = %@, item = %@", entry.orderID, entry.item.name);
        
        entry = nil;
        
        NSLog(@"%@", entry);

        // To test strong reference cycle, first remove the weak qualifier in OrderItem
        OrderEntry *newEntry = [[OrderEntry alloc] initWithOrderID:@"222"];
        newEntry.item.entry = newEntry;
        
        newEntry = nil; // strong reference cycle will not deallocate the object properly, unless we use 'weak'
        
        OrderEntry *entry2 = [[OrderEntry alloc] initWithOrderID:@"999" orderItem:@"100 cheeseburgers"];
        
        NSLog(@"New order, ID = %@, item = %@", entry2.orderID, entry2.item.name); // Note that this is releas after we left autorelease pool, and WHY :)
        
        NSLog(@"Leaving autorelease pool, fasten seat belt please!");
    }
    
    return 0;
}
