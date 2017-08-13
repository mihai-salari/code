#import "Person.h"

@interface Person ()

@property (nonatomic, readwrite) NSString *nationalID;

@end

@implementation Person

- (void)assignNationalID:(NSString *)id {
    self.nationalID = id;
}

@end
