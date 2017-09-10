#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int w1 = 0xA0A0A0A0, w2 = 0xFFFF0000, w3 = 0x00007777;
        
        NSLog(@"%x %x %x", w1 & w2 , w1 | w2, w1 ^ w2);
        NSLog(@"%x %x %x", ~w1, ~w2, ~w3);
        NSLog(@"%x %x %x", w1 ^ w1, w1 & ~w2, w1 | w2 | w3);
        NSLog(@"%x %x", w1 | (w2 & w3), w1 | (w2 & ~w3));
        NSLog(@"%x %x", ~(~w1 & ~w2), ~(~w1 | ~w2));
    }
    
    return 0;
}

/*

 2017-09-10 21:41:13.361746+0800 BitwiseOperation[60997:3791527] a0a00000 ffffa0a0 5f5fa0a0
 2017-09-10 21:41:13.361888+0800 BitwiseOperation[60997:3791527] 5f5f5f5f ffff ffff8888
 2017-09-10 21:41:13.361903+0800 BitwiseOperation[60997:3791527] 0 a0a0 fffff7f7
 2017-09-10 21:41:13.361916+0800 BitwiseOperation[60997:3791527] a0a0a0a0 ffffa0a0
 2017-09-10 21:41:13.361926+0800 BitwiseOperation[60997:3791527] ffffa0a0 a0a00000
 Program ended with exit code: 0

*/
