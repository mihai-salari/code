#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *_name;
    float _salary;
}

- (NSString *)name;
- (void)increaseSalaryByPercent:(float)percentage withMinimum:(float)min;

@end
