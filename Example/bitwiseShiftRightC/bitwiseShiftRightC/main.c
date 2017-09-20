//
//  main.c
//  bitwiseShiftRightC
//
//  Created by Lee Choon Siong on 2017/09/20.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    printf("int = %zu bytes\n", sizeof(int)); // 32-bits
    
    // logical shift right
    
    int someValue = 99;
    int bit30 = ((someValue & 0x0) != 0) ? 0x40000000 : 0;
    
    printf("bit30 = %x\n", bit30);
    
    // shift bits 0...30
    someValue = (someValue & 0x7fffffff) >> 1;
    
    // merge in bit #30
    someValue = someValue | bit30;
    
    printf("someValue = %x\n", someValue);
    
    return 0;
}
