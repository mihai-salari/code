//
//  main.c
//  bitwiseModuleNCounterC
//
//  Created by Lee Choon Siong on 2017/09/20.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

// A modulo-n counter counts from zero to some maximum value and then resets
// to zero.

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // traditional way
    int n = 3200;
    int count = 1;
    int cntr = 0;
    
    printf("%d ", cntr);
    
    while (count <= 10) {
        if (cntr == 31) {
            printf("\n");
            count += 1;
        }

        cntr = (cntr + 1) % n;
        printf("%d ", cntr);
    }

    // using bitwise AND
    // 0x3f = 31 = 2^5 - 1, so n = 32, m = 5
    count = 1;
    
    while (count <= 10) {
        if (cntr == 31 || cntr == 63) {
            printf("\n");
            count += 1;
        }

        cntr = (cntr + 1) & 0x3f;

        printf("%d ", cntr);
    }
    
    return 0;
}
