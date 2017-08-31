#import <Foundation/Foundation.h>

@protocol Writer <NSObject>

- (void)writeToFile:(NSFileHandle *)file;

@end
