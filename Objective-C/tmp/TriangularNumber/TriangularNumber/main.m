#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber = 0;
        
        NSLog(@"Table of Triangular Numbers");
        NSLog(@"============================");
        NSLog(@"n\tSum from 1 to n");
        NSLog(@"----------------------------");
        
        for (n = 1; n <= 10; ++n) {
            triangularNumber += n;
            NSLog(@"%i\t%i", n, triangularNumber);
        }
    }
    
    return 0;
}

/*

 2017-08-20 15:45:41.449795+0800 TriangularNumber[16476:823304] Table of Triangular Numbers
 2017-08-20 15:45:41.451662+0800 TriangularNumber[16476:823304] ============================
 2017-08-20 15:45:41.451678+0800 TriangularNumber[16476:823304] n	Sum from 1 to n
 2017-08-20 15:45:41.451688+0800 TriangularNumber[16476:823304] ----------------------------
 2017-08-20 15:45:41.451699+0800 TriangularNumber[16476:823304] 1	1
 2017-08-20 15:45:41.451716+0800 TriangularNumber[16476:823304] 2	3
 2017-08-20 15:45:41.451726+0800 TriangularNumber[16476:823304] 3	6
 2017-08-20 15:45:41.451737+0800 TriangularNumber[16476:823304] 4	10
 2017-08-20 15:45:41.451749+0800 TriangularNumber[16476:823304] 5	15
 2017-08-20 15:45:41.451761+0800 TriangularNumber[16476:823304] 6	21
 2017-08-20 15:45:41.451772+0800 TriangularNumber[16476:823304] 7	28
 2017-08-20 15:45:41.451783+0800 TriangularNumber[16476:823304] 8	36
 2017-08-20 15:45:41.451795+0800 TriangularNumber[16476:823304] 9	45
 2017-08-20 15:45:41.451806+0800 TriangularNumber[16476:823304] 10	55
 Program ended with exit code: 0

*/
