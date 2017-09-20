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
    char a = 0b01001000;
    
    printf("a = %x\n", a);
    printf("a = %d\n", a);
    printf("a = %c\n", a);
    
    printf("a >> 1 = %x\n", a = a >> 1);
    printf("a = %c\n", a);
    printf("a = %c\n", 0x24);
    
    int i = -1;
    printf("i = %x\n", i);
    printf("i >> 1 = %x\n", i = i >> 1);
    
    return 0;
}
