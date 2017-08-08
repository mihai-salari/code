#import <Foundation/Foundation.h>

@class Employee;

@interface Asset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic, weak) Employee *holder;

@end
