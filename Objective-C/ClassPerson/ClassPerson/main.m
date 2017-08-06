#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *foo = [[Person alloc] init];
        [foo setWeightInKilos:96];
        [foo setHeightInMeters:1.9];
        
        float height = [foo heightInMeters];
        int weight = [foo weightInKilos];
        NSLog(@"Foo is %.2f meters tall and weighs %d kilograms", height, weight);
        
        float bmi = [foo bodyMassIndex];
        NSLog(@"Foo has a BMI of %.1f", bmi);
    }
    
    return 0;
}
