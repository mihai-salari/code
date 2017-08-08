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
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
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
        
        NSLog(@"All assets: %@", allAssets);
        NSLog(@"Giving up ownership of arrays!!!");
        
        allAssets = nil;
        employees = nil;
    }
    
    return 0;
}

/*

 2017-08-08 19:28:56.559238+0800 ARC[31587:8844829] Employees: (
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
 2017-08-08 19:28:56.559407+0800 ARC[31587:8844829] Giving up ownership of one employee!
 2017-08-08 19:28:56.559464+0800 ARC[31587:8844829] deallocating <Employee 5: $836 in assets>
 2017-08-08 19:28:56.559614+0800 ARC[31587:8844829] <Employee 1: $503 in assets> has <Laptop 9: $503, assigned to <Employee 1: $503 in assets>>
 2017-08-08 19:28:56.559720+0800 ARC[31587:8844829] <Employee 2: $469 in assets> has <Laptop 7: $469, assigned to <Employee 2: $469 in assets>>
 2017-08-08 19:28:56.559788+0800 ARC[31587:8844829] <Employee 3: $768 in assets> has <Laptop 0: $350, assigned to <Employee 3: $768 in assets>>
 2017-08-08 19:28:56.559817+0800 ARC[31587:8844829] <Employee 3: $418 in assets> has <Laptop 4: $418, assigned to <Employee 3: $418 in assets>>
 2017-08-08 19:28:56.559842+0800 ARC[31587:8844829] <Employee 6: $819 in assets> has <Laptop 1: $367, assigned to <Employee 6: $819 in assets>>
 2017-08-08 19:28:56.559859+0800 ARC[31587:8844829] <Employee 6: $452 in assets> has <Laptop 6: $452, assigned to <Employee 6: $452 in assets>>
 2017-08-08 19:28:56.559881+0800 ARC[31587:8844829] <Employee 7: $384 in assets> has <Laptop 2: $384, assigned to <Employee 7: $384 in assets>>
 2017-08-08 19:28:56.559898+0800 ARC[31587:8844829] <Employee 9: $486 in assets> has <Laptop 8: $486, assigned to <Employee 9: $486 in assets>>
 2017-08-08 19:28:56.560005+0800 ARC[31587:8844829] All assets: (
 "<Laptop 0: $350, assigned to <Employee 3: $0 in assets>>",
 "<Laptop 1: $367, assigned to <Employee 6: $0 in assets>>",
 "<Laptop 2: $384, assigned to <Employee 7: $0 in assets>>",
 "<Laptop 3: 401 unassigned>",
 "<Laptop 4: $418, assigned to <Employee 3: $0 in assets>>",
 "<Laptop 5: 435 unassigned>",
 "<Laptop 6: $452, assigned to <Employee 6: $0 in assets>>",
 "<Laptop 7: $469, assigned to <Employee 2: $0 in assets>>",
 "<Laptop 8: $486, assigned to <Employee 9: $0 in assets>>",
 "<Laptop 9: $503, assigned to <Employee 1: $0 in assets>>"
 )
 2017-08-08 19:28:56.560124+0800 ARC[31587:8844829] Giving up ownership of arrays!!!
 2017-08-08 19:28:56.560208+0800 ARC[31587:8844829] deallocating <Laptop 0: $350, assigned to <Employee 3: $0 in assets>>
 2017-08-08 19:28:56.560261+0800 ARC[31587:8844829] deallocating <Laptop 1: $367, assigned to <Employee 6: $0 in assets>>
 2017-08-08 19:28:56.560283+0800 ARC[31587:8844829] deallocating <Laptop 2: $384, assigned to <Employee 7: $0 in assets>>
 2017-08-08 19:28:56.560366+0800 ARC[31587:8844829] deallocating <Laptop 3: 401 unassigned>
 2017-08-08 19:28:56.560410+0800 ARC[31587:8844829] deallocating <Laptop 4: $418, assigned to <Employee 3: $0 in assets>>
 2017-08-08 19:28:56.560426+0800 ARC[31587:8844829] deallocating <Laptop 5: 435 unassigned>
 2017-08-08 19:28:56.560472+0800 ARC[31587:8844829] deallocating <Laptop 6: $452, assigned to <Employee 6: $0 in assets>>
 2017-08-08 19:28:56.560544+0800 ARC[31587:8844829] deallocating <Laptop 7: $469, assigned to <Employee 2: $0 in assets>>
 2017-08-08 19:28:56.560583+0800 ARC[31587:8844829] deallocating <Laptop 8: $486, assigned to <Employee 9: $0 in assets>>
 2017-08-08 19:28:56.560613+0800 ARC[31587:8844829] deallocating <Laptop 9: $503, assigned to <Employee 1: $0 in assets>>
 2017-08-08 19:28:56.560636+0800 ARC[31587:8844829] deallocating <Employee 0: $0 in assets>
 2017-08-08 19:28:56.560656+0800 ARC[31587:8844829] deallocating <Employee 1: $0 in assets>
 2017-08-08 19:28:56.560687+0800 ARC[31587:8844829] deallocating <Employee 2: $0 in assets>
 2017-08-08 19:28:56.560707+0800 ARC[31587:8844829] deallocating <Employee 3: $0 in assets>
 2017-08-08 19:28:56.560727+0800 ARC[31587:8844829] deallocating <Employee 4: $0 in assets>
 2017-08-08 19:28:56.560746+0800 ARC[31587:8844829] deallocating <Employee 6: $0 in assets>
 2017-08-08 19:28:56.560765+0800 ARC[31587:8844829] deallocating <Employee 7: $0 in assets>
 2017-08-08 19:28:56.560784+0800 ARC[31587:8844829] deallocating <Employee 8: $0 in assets>
 2017-08-08 19:28:56.560802+0800 ARC[31587:8844829] deallocating <Employee 9: $0 in assets>
 Program ended with exit code: 0
 
*/
