#import <UIKit/UIKit.h>

extern NSString * const LCSMissingValuesKey;
extern NSString * const LCSAccountExpirationDateKey;

extern NSString * const LCSErrorDomain;

enum {
    LCSValidationError = 1,
    LCSAccountExpiredError = 2,
    LCSWrongCredentialsError = 3
};

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *name;
@property (nonatomic, weak) IBOutlet UITextField *city;
@property (nonatomic, weak) IBOutlet UITextField *price;

+ (BOOL)publishAd:(NSDictionary *)ad error:(NSError **)err;

@end

