//
//  main.c
//  bitwiseShiftRightC
//
//  Created by Lee Choon Siong on 2017/09/20.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#include <stdio.h>
#include <stdbool.h>

int main(int argc, const char * argv[]) {
    printf("int = %zu bytes\n", sizeof(char)); // 32-bits
    
    char a = 0b01001000;
    
    printf("a >> 1 = %x\n", a >> 1);
    
    printf("a = %x\n", a);
    printf("a = %d\n", a);
    printf("a = %c\n", a);
    
    // logical shift right
    
    // compute bit 6 (start with bit 0, end with bit 7)
    char bit6 = ((a & 0x800) != 0) ? 0x40 : 0; // 0x4 = 0100, 0x8 = 1000
    
    printf("aAnd = %x\n", a & 0x800);
    printf("bit6 = %x\n", bit6);
    
    printf("aAnd = %x\n", a & 0x7f); // 0x48
    
    // shifts bits 0...6, 0x7 = 0111
    a = (a & 0x7f) >> 1; // 0x48 -> 0x24
    
    // merge in bit #6
    a = a | bit6;
    
    printf("a = %x\n", a);
    
    return 0;
}
