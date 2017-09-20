//
//  main.c
//  bitwiseEvenOdd
//
//  Created by Lee Choon Siong on 2017/09/20.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int number = 18;
    
    if((number & 1) == 0) {
        printf("even number\n");
    } else {
        printf("odd number\n");
    }
    
    return 0;
}
