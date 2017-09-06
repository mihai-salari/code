#import <Foundation/Foundation.h>
#import <objc/runtime.h>

// Test Class 1

@interface TestClass1: NSObject {
    
@public int myInt;
    
}

@end

@implementation TestClass1

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a few instances of class1 and display its data
        TestClass1 *tc1a = [[TestClass1 alloc] init];
        tc1a->myInt = 0xa5a5a5a5;
        
        TestClass1 *tc1b = [[TestClass1 alloc] init];
        tc1b->myInt = 0xc3c3c3c3;
        
        long tc1Size = class_getInstanceSize([TestClass1 class]);
        
        NSData *obj1Data = [NSData dataWithBytes:(__bridge const void *)(tc1a) length:tc1Size];
        NSData *obj2Data = [NSData dataWithBytes:(__bridge const void *)(tc1b) length:tc1Size];
        
        NSLog(@"TestClass1 object tc1 contains %@", obj1Data);
        NSLog(@"TestClass1 object tc2 contains %@", obj2Data);
        NSLog(@"TestClass1 memory address = %p", [TestClass1 class]);
    }
    
    return 0;
}

/*

 2017-09-06 21:13:43.065925+0800 ObjCRuntime[6141:367259] TestClass1 object tc1 contains <d1110000 01801d00 a5a5a5a5 00000000>
 2017-09-06 21:13:43.066125+0800 ObjCRuntime[6141:367259] TestClass1 object tc2 contains <d1110000 01801d00 c3c3c3c3 00000000>
 2017-09-06 21:13:43.066136+0800 ObjCRuntime[6141:367259] TestClass1 memory address = 0x1000011d0
 Program ended with exit code: 0

*/
