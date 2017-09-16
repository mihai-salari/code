#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int target = 121;
        
        NSMutableArray *numberList = [NSMutableArray array];
        NSMutableArray *resultList = [NSMutableArray array];
        
        // 1. Create a list of consecutive integers from 2 ... n
        for (int i = 2; i <= target; i++) {
            NSNumber *listMember = [NSNumber numberWithInt:i];
            [numberList addObject:listMember];
        }
        
        //NSLog(@"numberList (%ld) = %@", [numberList count], numberList);
        
#if 0
        // print out the list member
        int c = 0;
        
        while (c < [numberList count]) {
            NSLog(@"element %d = %@", c, numberList[c]);
            c += 1;
        }
#endif
        
        // 2. Initially let p equal to 2, the smallest prime number
        int p = 2;
        
        [resultList addObject:[NSNumber numberWithInt:p]];
        
        // 3. Enumerate the multiples of p by counting to n from 2p in increments of
        // p, and mark them in the list (these will be 2p, 3p, 4p, ...; the p itself
        // should not be marked)
        
        int c = 1; // skipped the first element -- 2
        
        BOOL nextPrime = YES;
        
        
        while (nextPrime) {
            c = 1;
            //printf("while: p = %d\n", p);
            
            while (c < [numberList count]) {
                if ([numberList[c] intValue] % p == 0) {
                    [numberList removeObjectAtIndex:c];
                }
                
                c++;
            }
            
            //NSLog(@"numberList (%ld) = %@", [numberList count], numberList);
            
            int i = 0;
            
            // 4. Find the first number greater than p in the list that is not marked.
            // If there was no such number, stop. Otherwise, let p now equal to this
            // new number (which is the next prime), and repeat from step 3.
            while (i < [numberList count]) {
                //NSLog(@"%d", [numberList[i] intValue]);
                
                if ([numberList[i] intValue] > p) {
                    p = [numberList[i] intValue];
                    //NSLog(@"p = %d", p);
                    [resultList addObject:[NSNumber numberWithInt:p]];
                    break;
                } else if ([numberList[i] intValue] != p && i == [numberList count] - 1) {
                    //printf("nextPrime = NO\n");
                    
                    nextPrime = NO;
                }
                
                i += 1;
            }
            
            continue;
        }
        
        NSLog(@"Prime numbers = %@ (%ld)", resultList, [resultList count]);
    }
    
    return 0;
}
