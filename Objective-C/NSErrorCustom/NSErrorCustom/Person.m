#import "Person.h"

NSString * const LCSErrorDomain = @"com.foo.bar.api";
NSString * const LCSMissingValuesKey = @"LCSMissingValuesKey";
NSString * const LCSAccountExpirationDateKey = @"LCSAccountExpirationDateKey";

@implementation Person

+ (BOOL)printPersonInfo:(Person *)person error:(NSError **)error {
    if (person == nil) {
        @throw [NSException exceptionWithName:@"BadAPICall"
                                       reason:@"person is nil"
                                     userInfo:nil];
    }
    
    NSMutableArray *missingValues = [NSMutableArray array];
    
    if ([person name] == nil || [[person name] length] == 0) {
        NSLog(@"name is missing!");
        [missingValues addObject:@"name"];
    }
    
    if ([person age] == 0) {
        NSLog(@"age is missing!");
        [missingValues addObject:@"age"];
    }
    
    if ([missingValues count] > 0) {
        NSLog(@"creating the error object...");
        
        if (error != NULL) {
            NSLog(@"error is not NULL!");
            
            NSString *description = @"The person could not be print because some required values are missing.";
            NSString *recoverySuggestion = @"Please provide the missing values and try again.";
            NSArray *keys = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedRecoverySuggestionErrorKey, LCSMissingValuesKey, nil];
            NSArray *values = [NSArray arrayWithObjects:description, recoverySuggestion, missingValues, nil];
            NSDictionary *userDict = [NSDictionary dictionaryWithObject:values forKey:keys];
            
            // Note that we are change the value of error pointer here!
            // And this is why we need two asterisk!
            *error = [[NSError alloc] initWithDomain:LCSErrorDomain
                                                code:LCSValidationError
                                            userInfo:userDict];
        }
        
        return NO;
    } else {
        return YES;
    }
}

- (id)initWithName:(NSString *)name age:(int)age {
    if (self = [super init]) {
        _name = name;
        _age = age;
        
        return self;
    }
    
    return nil;
}

- (id)init {
    return [self initWithName:nil age:0];
}

@end
