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
            NSLog(@"%2i\t%5i", n, triangularNumber);
        }
    }
    
    return 0;
}

/*

 2017-08-20 15:49:27.276020+0800 TriangularNumber[16546:827714] Table of Triangular Numbers
 2017-08-20 15:49:27.276215+0800 TriangularNumber[16546:827714] ============================
 2017-08-20 15:49:27.276223+0800 TriangularNumber[16546:827714] n	Sum from 1 to n
 2017-08-20 15:49:27.276232+0800 TriangularNumber[16546:827714] ----------------------------
 2017-08-20 15:49:27.276240+0800 TriangularNumber[16546:827714]  1	    1
 2017-08-20 15:49:27.276250+0800 TriangularNumber[16546:827714]  2	    3
 2017-08-20 15:49:27.276258+0800 TriangularNumber[16546:827714]  3	    6
 2017-08-20 15:49:27.276269+0800 TriangularNumber[16546:827714]  4	   10
 2017-08-20 15:49:27.276279+0800 TriangularNumber[16546:827714]  5	   15
 2017-08-20 15:49:27.276288+0800 TriangularNumber[16546:827714]  6	   21
 2017-08-20 15:49:27.276305+0800 TriangularNumber[16546:827714]  7	   28
 2017-08-20 15:49:27.276328+0800 TriangularNumber[16546:827714]  8	   36
 2017-08-20 15:49:27.276336+0800 TriangularNumber[16546:827714]  9	   45
 2017-08-20 15:49:27.276341+0800 TriangularNumber[16546:827714] 10	   55
 Program ended with exit code: 0

*/
