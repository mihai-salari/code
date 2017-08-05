#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 94;
        int b = 123;
        
        NSLog(@"Numbers:\nA: %10d\nB: %10d", a, b);
        NSLog(@"Numbers:\nA: %-10d\nB: %-10d", a, b);
        NSLog(@"Numbers:\nA: %010d\nB: %010d", a, b);
    }
    
    return 0;
}

/*

 2017-08-05 18:08:26.591581+0800 NSLog[98840:6691022] Numbers:
 A:         94
 B:        123
 2017-08-05 18:08:26.591751+0800 NSLog[98840:6691022] Numbers:
 A: 94
 B: 123
 2017-08-05 18:08:26.591770+0800 NSLog[98840:6691022] Numbers:
 A: 0000000094
 B: 0000000123
 Program ended with exit code: 0

*/
