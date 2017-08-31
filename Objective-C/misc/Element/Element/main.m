#import <Foundation/Foundation.h>
#import "Atom.h"
#import "Nuclear.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Atom *atom = [[Atom alloc] init];
        
        NSLog(@"Atom chemical element name: %@", atom.chemicalElement);
        
        NSLog(@"Atomic number = %lu", [atom atomicNumber]);
    }
    
    return 0;
}
