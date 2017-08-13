#import "Person.h"

@interface Person ()

@property (nonatomic, readwrite) NSString *nationalID; // but internally we can readwrite

@end

@implementation Person

- (void)assignNationalID:(NSString *)id {
    self.nationalID = id;
}

@end
