#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 0;
        int answer = 1;
        
        char *field1 = "n";
        char *field2 = "factorial of n";
        
        NSLog(@"%3s\t%15s", field1, field2);
        NSLog(@"=========================");
        
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

 2017-08-20 22:06:40.314438+0800 Factorial[21560:1000268]   n	 factorial of n
 2017-08-20 22:06:40.314610+0800 Factorial[21560:1000268] =========================
 2017-08-20 22:06:40.314627+0800 Factorial[21560:1000268]   1	              1
 2017-08-20 22:06:40.314640+0800 Factorial[21560:1000268]   2	              2
 2017-08-20 22:06:40.314651+0800 Factorial[21560:1000268]   3	              6
 2017-08-20 22:06:40.314694+0800 Factorial[21560:1000268]   4	             24
 2017-08-20 22:06:40.314705+0800 Factorial[21560:1000268]   5	            120
 2017-08-20 22:06:40.314712+0800 Factorial[21560:1000268]   6	            720
 2017-08-20 22:06:40.314718+0800 Factorial[21560:1000268]   7	           5040
 2017-08-20 22:06:40.314724+0800 Factorial[21560:1000268]   8	          40320
 2017-08-20 22:06:40.314731+0800 Factorial[21560:1000268]   9	         362880
 2017-08-20 22:06:40.314742+0800 Factorial[21560:1000268]  10	        3628800
 Program ended with exit code: 0

*/
