//
//  main.c
//  bitwiseCompareTwoValues
//
//  Created by Lee Choon Siong on 2017/09/20.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int a = 0b10101010;
    int b = 0b11000110;
    
    // If we want to know whether certain bits are set for both a and b, we can
    // bitwise AND those two values and compare
    
    // e.g. we want to know whether bit 1 is set for both a and b
    if ((a & 0b00000010) == (b & 0b00000010)) {
        printf("bit 1 is set for both a and b\n");
    } else {
        printf("bit 1 is not set for both a and b\n");
    }
    return 0;
}
