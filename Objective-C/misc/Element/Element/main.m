#import <Foundation/Foundation.h>
#import "Atom.h"
#import "Nuclear.h"
#import "Hydrogen.h"

/*
    Using properties, protocol, category...
    Added initialization method, class initialization method...
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Atom *atom = [[Atom alloc] init];
        
        NSLog(@"Atom chemical element name: %@", atom.chemicalElement);
        
        NSLog(@"Atomic number = %lu", [atom atomicNumber]);
        
        Hydrogen *h = [[Hydrogen alloc] init];
        
        NSLog(@"Hydrogen chemical element name: %@", h.chemicalElement);
        
        Atom *h1 = [Hydrogen hydrogenWithNeutrons:0];
        [h1 logInfo];
        
        id h2 = [[Hydrogen alloc] initWithNeutrons:1];
        [h2 logInfo];
        
        Hydrogen *h3 = [Hydrogen hydrogenWithNeutrons:2];
        [h3 logInfo];
        
        NSLog(@"h1's class is %@", [h1 class]);
        NSLog(@"h2's class is %@", [h2 class]);
        NSLog(@"h3's superclass is %@", [h3 superclass]);
    }
    
    return 0;
}
