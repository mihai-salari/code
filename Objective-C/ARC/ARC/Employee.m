#import "Employee.h"
#import "Asset.h"

@interface Employee() {
    NSMutableArray *_assets;
}

@end

@implementation Employee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAsset:(Asset *)a {
    // is asset nil?
    if (!_assets) {
        // create the array
        _assets = [[NSMutableArray alloc] init];
    }
    
    [_assets addObject:a];
    
    a.holder = self;
}

- (void)removeAsset:(Asset *)a {
    // make sure we have asset before we remove anything
    if (_assets) {
        [_assets removeObject:a];
    } else {
        NSLog(@"Error: failed to remove asset %@", self);
    }
}

- (unsigned int)valueOfAssets {
    unsigned int sum = 0;
    
    for (Asset *a in _assets) {
        sum += [a resaleValue];
    }
    
    return sum;
}

- (double)yearsOfEmployment {
    if (self.hireDate) { // make sure not nil
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        
        return secs / (365.0 * 24.0 * 60.0 * 60.0); // seconds per year
    } else {
        return 0;
    }
}

// Override inherited method
- (float)bodyMassIndex {
    return [super bodyMassIndex] * 0.9;
}

// Override description from NSObject
- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
