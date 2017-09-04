#import "ViewController.h"

NSString * const LCSErrorDomain = @"com.example.API";
NSString * const LCSMissingValuesKey = @"LCSMissingValuesKey";
NSString * const LCSAccountExpirationDateKey = @"LCSAccountExpirationDateKey";

@interface ViewController ()

@end

@implementation ViewController

+ (BOOL)publishAd:(NSDictionary *)ad error:(NSError *__autoreleasing *)err {
    if (ad == nil) {
        @throw [NSException exceptionWithName:@"LCSBadAPICall"
                                       reason:@"ad dictionary is nil"
                                     userInfo:nil];
    }
    
    NSMutableArray *missingValues = [NSMutableArray array];
    
    for (NSString *key in [@"name city price" componentsSeparatedByString:@" "]) {
        if ([[ad objectForKey:key] length] == 0) {
            [missingValues addObject:key];
        }
    }
    
    if ([missingValues count] > 0) {
        if (err != NULL) {
            NSString *description = @"The ad could not be published because some required values are missing.";
            NSString *recoverySuggestion = @"Please provide the missing values and try again.";
            
            NSArray *keys = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedRecoverySuggestionErrorKey, LCSMissingValuesKey, nil];
            NSArray *values = [NSArray arrayWithObjects:description, recoverySuggestion, missingValues, nil];
            
            NSDictionary *userDict = [NSDictionary dictionaryWithObject:values forKey:keys];
            
            *err = [[NSError alloc] initWithDomain:LCSErrorDomain
                                              code:LCSValidationError
                                          userInfo:userDict];
        }
        
        return NO;
    } else {
        return YES;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)publishAd:(id)sender {
    NSLog(@"Ooops, click me...");
    
    NSArray *keys = [NSArray arrayWithObjects:@"name", @"city", @"price", nil];
    NSArray *values = [NSArray arrayWithObjects:self.name.text, self.city.text, self.price.text, nil];
    
    NSDictionary *ad = [NSDictionary dictionaryWithObject:values forKey:keys];
    
    NSError *error;
    
    if ([[self class] publishAd:ad error:&error]) {
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Success"
                                                     message:@"Ad published successfully"
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil];
        
        [av show];
    }
}

@end
