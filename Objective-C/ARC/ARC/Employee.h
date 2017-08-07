#import "Person.h"

@class Asset; // Using @class instead of #import gives the compiler less information, but makes the processing of this particular file faster

@interface Employee : Person {
    NSMutableArray *_assets; // We want to use different type for property and instance variable
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
