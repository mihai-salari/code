#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Employee *foo = [[Employee alloc] init];
            foo.weightInKilos = 90 + i;
            foo.heightInMeters = 1.8 - i/10.0;
            foo.employeeID = i;
            
            [employees addObject:foo];
        }
        
        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee!");
        
        [employees removeObjectAtIndex:5];
        
        for (Employee *e in employees) {
            if ([e valueOfAssets] > 0) {
                for (Asset *a in [e assets]) {
                    NSLog(@"%@ has %@", e, a);
                    [e removeAsset:a];
                }
            }
        }
        
        NSLog(@"Giving up ownership of arrays!!!");
        
        employees = nil;
    }
    
    return 0;
}

/*

 2017-08-07 17:43:17.379797+0800 ARC[19428:7771560] Employees: (
 "<Employee 0: $0 in assets>",
 "<Employee 1: $503 in assets>",
 "<Employee 2: $469 in assets>",
 "<Employee 3: $768 in assets>",
 "<Employee 4: $0 in assets>",
 "<Employee 5: $836 in assets>",
 "<Employee 6: $819 in assets>",
 "<Employee 7: $384 in assets>",
 "<Employee 8: $0 in assets>",
 "<Employee 9: $486 in assets>"
 )
 2017-08-07 17:43:17.379944+0800 ARC[19428:7771560] Giving up ownership of one employee!
 2017-08-07 17:43:17.380026+0800 ARC[19428:7771560] deallocating <Employee 5: $836 in assets>
 2017-08-07 17:43:17.380109+0800 ARC[19428:7771560] deallocating <Laptop 3: 401>
 2017-08-07 17:43:17.380144+0800 ARC[19428:7771560] deallocating <Laptop 5: 435>
 2017-08-07 17:43:17.380175+0800 ARC[19428:7771560] <Employee 1: $503 in assets> has <Laptop 9: 503>
 2017-08-07 17:43:17.380192+0800 ARC[19428:7771560] deallocating <Laptop 9: 503>
 2017-08-07 17:43:17.380215+0800 ARC[19428:7771560] <Employee 2: $469 in assets> has <Laptop 7: 469>
 2017-08-07 17:43:17.380227+0800 ARC[19428:7771560] deallocating <Laptop 7: 469>
 2017-08-07 17:43:17.380252+0800 ARC[19428:7771560] <Employee 3: $768 in assets> has <Laptop 0: 350>
 2017-08-07 17:43:17.380273+0800 ARC[19428:7771560] <Employee 3: $418 in assets> has <Laptop 4: 418>
 2017-08-07 17:43:17.380286+0800 ARC[19428:7771560] deallocating <Laptop 0: 350>
 2017-08-07 17:43:17.380296+0800 ARC[19428:7771560] deallocating <Laptop 4: 418>
 2017-08-07 17:43:17.391827+0800 ARC[19428:7771560] <Employee 6: $819 in assets> has <Laptop 1: 367>
 2017-08-07 17:43:17.391855+0800 ARC[19428:7771560] <Employee 6: $452 in assets> has <Laptop 6: 452>
 2017-08-07 17:43:17.391868+0800 ARC[19428:7771560] deallocating <Laptop 1: 367>
 2017-08-07 17:43:17.391879+0800 ARC[19428:7771560] deallocating <Laptop 6: 452>
 2017-08-07 17:43:17.391895+0800 ARC[19428:7771560] <Employee 7: $384 in assets> has <Laptop 2: 384>
 2017-08-07 17:43:17.391905+0800 ARC[19428:7771560] deallocating <Laptop 2: 384>
 2017-08-07 17:43:17.391928+0800 ARC[19428:7771560] <Employee 9: $486 in assets> has <Laptop 8: 486>
 2017-08-07 17:43:17.391940+0800 ARC[19428:7771560] deallocating <Laptop 8: 486>
 2017-08-07 17:43:17.391948+0800 ARC[19428:7771560] Giving up ownership of arrays!!!
 2017-08-07 17:43:17.391959+0800 ARC[19428:7771560] deallocating <Employee 0: $0 in assets>
 2017-08-07 17:43:17.391969+0800 ARC[19428:7771560] deallocating <Employee 1: $0 in assets>
 2017-08-07 17:43:17.392014+0800 ARC[19428:7771560] deallocating <Employee 2: $0 in assets>
 2017-08-07 17:43:17.392058+0800 ARC[19428:7771560] deallocating <Employee 3: $0 in assets>
 2017-08-07 17:43:17.392087+0800 ARC[19428:7771560] deallocating <Employee 4: $0 in assets>
 2017-08-07 17:43:17.392119+0800 ARC[19428:7771560] deallocating <Employee 6: $0 in assets>
 2017-08-07 17:43:17.392137+0800 ARC[19428:7771560] deallocating <Employee 7: $0 in assets>
 2017-08-07 17:43:17.392148+0800 ARC[19428:7771560] deallocating <Employee 8: $0 in assets>
 2017-08-07 17:43:17.392158+0800 ARC[19428:7771560] deallocating <Employee 9: $0 in assets>
 Program ended with exit code: 0

*/
