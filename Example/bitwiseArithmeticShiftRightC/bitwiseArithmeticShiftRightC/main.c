//
//  main.c
//  bitwiseArithmeticShiftRightC
//
//  Created by Lee Choon Siong on 2017/09/20.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    printf("int = %zu bytes\n", sizeof(char)); // 32-bits
    
    char a = 0b01001000;
    
    printf("a >> 1 = %x\n", a >> 1);
    
    printf("a = %x\n", a);
    printf("a = %d\n", a);
    printf("a = %c\n", a);
    
    // arithmetic shift right
    
    char bit67 = ((a & 0x800) != 0) ? 0xC0 : 0; // 0x4 = 1100, 0x8 = 1000
    
    printf("a & 0x800 = 0x%x\n", a & 0x800);
    printf("bit67 = 0x%x\n", bit67);
    
    printf("a & 0x7f = 0x%x\n", a & 0x7f); // 0x48
    
    // shifts bits 0...6, 0x7 = 0111
    a = (a & 0x7f) >> 1; // 0x48 -> 0x24
    
    // merge in bit #6 or #7
    a = a | bit67;
    
    printf("a = 0x%x\n", a);

    return 0;
}
