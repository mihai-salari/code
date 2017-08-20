#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 0;
        int answer = 1;
        
        char *field1 = "n";
        char *field2 = "factorial of n";
        
        NSLog(@"%3s\t%15s", field1, field2);
        NSLog(@"====================");
        
        for (n = 1; n <= 10; n++) {
            for (int m = 1; m <= n; m++) {
                answer = answer * m;
            }
            
            NSLog(@"%3i\t%15i", n, answer);
            answer = 1;
        }
        
    }
    
    return 0;
}

/*

 2017-08-20 22:06:10.784908+0800 Factorial[21525:999531]   n	 factorial of n
 2017-08-20 22:06:10.785097+0800 Factorial[21525:999531] ====================
 2017-08-20 22:06:10.785106+0800 Factorial[21525:999531]   1	              1
 2017-08-20 22:06:10.785117+0800 Factorial[21525:999531]   2	              2
 2017-08-20 22:06:10.785127+0800 Factorial[21525:999531]   3	              6
 2017-08-20 22:06:10.785133+0800 Factorial[21525:999531]   4	             24
 2017-08-20 22:06:10.785139+0800 Factorial[21525:999531]   5	            120
 2017-08-20 22:06:10.785148+0800 Factorial[21525:999531]   6	            720
 2017-08-20 22:06:10.785159+0800 Factorial[21525:999531]   7	           5040
 2017-08-20 22:06:10.785170+0800 Factorial[21525:999531]   8	          40320
 2017-08-20 22:06:10.785213+0800 Factorial[21525:999531]   9	         362880
 2017-08-20 22:06:10.785221+0800 Factorial[21525:999531]  10	        3628800
 Program ended with exit code: 0

*/
