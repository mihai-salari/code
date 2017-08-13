#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, readonly) NSString *nationalID; // readonly for public

- (void)assignNationalID:(NSString *)id;

@end
