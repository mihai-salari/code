//
//  main.c
//  bitwiseLogicalShiftRightC
//
//  Created by Lee Choon Siong on 2017/09/20.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    char a = 0b01001000;
    
    printf("a = %d\n", a);
    printf("a = %c\n", a);
    printf("a = 0x%x\n", a);
    printf("a >> 1 = 0x%x\n", a >> 1);
    
    // logical shift right
    
    // compute bit 6 (start with bit 0, end with bit 7)
    // 0x4 = 0100, 0x8 = 1000
    char bit6 = ((a & 0x800) != 0) ? 0x40 : 0;
    
    printf("a & 0x800 = 0x%x\n", a & 0x800);
    printf("bit_6 = 0x%x\n", bit6);
    
    // 0x7 = 0111, 0x7f = 01111111
    // 0111_1111 & 01001000 = 01001000
    printf("a & 0x7f = 0x%x\n", a & 0x7f); // 0x48
    
    // shifts bits 0...6
    // 01001000 >> 1 = 0010_0100
    // 0010 = 0x2, 0100 = 0x4
    a = (a & 0x7f) >> 1; // 0x48 -> 0x24
    
    // merge in bit #6
    // 00100100 | 0
    a = a | bit6;
    
    printf("a = 0x%x\n", a);

    return 0;
}
