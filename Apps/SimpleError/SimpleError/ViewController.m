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
    } else {
        NSLog(@"ad is %@", ad);
    }
    
    NSMutableArray *missingValues = [NSMutableArray array];
    
    //NSLog(@"%@", [ad objectForKey:@"name"]);
    
//    for (NSString *key in [@"name city price" componentsSeparatedByString:@" "]) {
//        NSLog(@"%@ is %@", key, [ad objectForKey:key]);
//        
//        if ([[ad objectForKey:key] length] == 0) {
//            NSLog(@"Missing = %@", key);
//            
//            [missingValues addObject:key];
//        }
//    }
    
    if (![ad objectForKey:@"name"]) {
        NSLog(@"missing name");
        [missingValues addObject:@"name"];
    }
    
    if (![ad objectForKey:@"city"]) {
        NSLog(@"missing city");
        [missingValues addObject:@"city"];
    }
    
    if (![ad objectForKey:@"price"]) {
        NSLog(@"missing price");
        [missingValues addObject:@"price"]; 
    }
    
    
    if ([missingValues count] > 0) {
        NSLog(@"Missing values!");
        
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
    NSLog(@"keys = %@", keys);
    
    NSArray *values = [NSArray arrayWithObjects:self.name.text, self.city.text, self.price.text, nil];
    NSLog(@"values = %@", values);
    
    //NSDictionary *ad = [NSDictionary dictionaryWithObject:values forKey:keys];
    
    NSDictionary *ad = @{
                        @"name": self.name.text,
                        @"city": self.city.text,
                        @"price": self.price.text
                        };
    
    NSLog(@"ad is %@", ad);
    
    NSError *error;
    
    if ([[self class] publishAd:ad error:&error]) {
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Success"
                                                     message:@"Ad published successfully"
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil];
        
        NSLog(@"No error, preparing to show av...");
        
        [av show];
    } else {
        NSLog(@"Error!");
    }
}

@end
