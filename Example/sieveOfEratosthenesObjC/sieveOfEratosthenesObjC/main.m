#import <Foundation/Foundation.h>

/*
 
 Sieve of Eratosthenes
 =====================
 
 1. Create a list of consecutive integers from 2 through n: (2, 3, 4, 5, ..., n).
 2. Initially let p equal to 2, the smallest prime number.
 3. Enumerate the multiples of p by counting to n from 2p in increments of p, 
    and mark them in the list (these will be 2p, 3p, 4p, ...; the p itself should not be marked)
 4. Find the first number greater than p in the list that is not marked. If there 
    was no such number, stop. Otherwise, let p now equal to this new number 
    (which is the next prime), and repeat from step 3.
 5. When the algorithm terminates, the numbers remaining not marked in the list
    are all the primes below n.
 
 The main idea here is that every value given to p will be prime, because if it
 were composite it would be marked as a multiple of some other, smaller prime.
 Note that some of the numbers may be marked more than once. As a refinement,
 it is sufficient to mark the numbers in step 3 starting from p^2, as all the smaller
 multiples of p will have already been marked at that point. This means that the 
 algorithm is allowed to terminate in step 4 when p^2 is greater than n.
 
 In the program below, instead of marking the numbers, I removed those numbers in
 the list and I have created a new list to hold all p.
 
 https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
 
 */

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
        
        // 5. When the algorithm terminates, the numbers remaining not marked in the
        // list are all the primes below n.
        NSLog(@"Prime numbers = %@ (%ld)", resultList, [resultList count]);
    }
    
    return 0;
}

/*

 2017-09-17 05:31:50.689563+0800 sieveOfEratosthenesObjC[15724:811340] Prime numbers = (
 2,
 3,
 5,
 7,
 11,
 13,
 17,
 19,
 23,
 29,
 31,
 37,
 41,
 43,
 47,
 53,
 59,
 61,
 67,
 71,
 73,
 79,
 83,
 89,
 97,
 101,
 103,
 107,
 109,
 113
 ) (30)
 Program ended with exit code: 0

*/
