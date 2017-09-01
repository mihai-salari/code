#import <Foundation/Foundation.h>
#import "Atom.h"
#import "Nuclear.h"
#import "Hydrogen.h"

/*
 Using properties, protocol, category...
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Atom *atom = [[Atom alloc] init];
        
        NSLog(@"Atom chemical element name: %@", atom.chemicalElement);
        
        NSLog(@"Atomic number = %lu", [atom atomicNumber]);
        
        Hydrogen *h = [[Hydrogen alloc] init];
        
        NSLog(@"Hydrogen chemical element name: %@", h.chemicalElement);
        
        Atom *hydrogen = [Hydrogen hydrogenWithNeutrons:0];
        [hydrogen logInfo];
    }
    
    return 0;
}
