//
//  main.c
//  bitwiseDivisibleBy16
//
//  Created by Lee Choon Siong on 2017/09/20.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int number = 160;
    
    // If the LO n bits of a binary number all contain zero, then the number
    // is evenly divisible by 2^n
    if((number & 0b1111) == 0) {
        printf("%d is evenly divisible by 16\n", number);
    } else {
        printf("%d is not evenly divisible by 16\n", number);
    }
    
    return 0;
}
