//
//  main.c
//  bitwiseOperations
//
//  Created by Lee Choon Siong on 2017/09/21.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int a = 4;
    int b = 5;
    int c = a & b;
    
    printf("a & b = 0x%x\n", a & b);
    printf("a & b = 0x%x\n", c);
    
    return 0;
}
