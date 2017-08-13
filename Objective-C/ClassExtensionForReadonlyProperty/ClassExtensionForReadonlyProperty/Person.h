#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, readonly) NSString *nationalID;

- (void)assignNationalID:(NSString *)id;

@end
