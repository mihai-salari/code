#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int numbers1[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
        int numbers2[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
        
        numbers1[11] = 11; // crash
        numbers2[11] = 11;
        
        NSLog(@"%d", numbers1[11]);
        NSLog(@"%d", numbers2[11]);
    }
    
    return 0;
}
