#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int numbers[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        int *pNumber = numbers;
        
        NSLog(@"Number 9th is %d", pNumber[9]);
    }
    
    return 0;
}
