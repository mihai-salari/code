#import <Foundation/Foundation.h>
#import "Atom.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Atom *atom = [[Atom alloc] init];
        
        NSLog(@"Atom chemical element name: %@", atom.chemicalElement);
    }
    
    return 0;
}
