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
    
    // Retrieve and display the data for the TestClass1 class object
    id testClz = objc_getClass("TestClass1"); // class object
    long tcSize = class_getInstanceSize([testClz class]);
    
    NSData *tcData = [NSData dataWithBytes:(__bridge const void *)(testClz) length:tcSize];
    
    NSLog(@"TestClass1 class contains %@", tcData);
    NSLog(@"TestClass1 superclass memory address %p", [TestClass1 superclass]);
    
    return 0;
}

/*

 2017-09-06 22:01:50.234822+0800 ObjCRuntime[6743:402575] TestClass1 object tc1 contains <21120000 01801d00 a5a5a5a5 00000000>
 2017-09-06 22:01:50.234999+0800 ObjCRuntime[6743:402575] TestClass1 object tc2 contains <21120000 01801d00 c3c3c3c3 00000000>
 2017-09-06 22:01:50.235011+0800 ObjCRuntime[6743:402575] TestClass1 memory address = 0x100001220
 2017-09-06 22:01:50.235047+0800 ObjCRuntime[6743:402575] TestClass1 class contains <f9110000 01801d00 40711bef ff7f0000>
 2017-09-06 22:01:50.235107+0800 ObjCRuntime[6743:402575] TestClass1 superclass memory address 0x7fffef1b7140
 Program ended with exit code: 0

*/
