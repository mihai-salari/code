#include <stdio.h>

/*
 Two's Complement Notation
 =========================
 
 To represent a negative number using two's complement notation:
 
 1. Start with the binary representation of the positive version of the number.
 2. Complement all the bits (turn the ones into zeros and the zeros into ones).
 3. Add one to the result.
 
 One side effect of this scheme is that the most-significant bit (the bit on the far
 left, so called because it has the largest value) is 1 whenever the number is
 negative and is 0 when the number is zero or positive. Consequently, it's often
 referred to as the sign bit.
 
 */

int main(int argc, const char * argv[]) {
    printf("sizeof int = %zu bytes\n", sizeof(int));
    
    int a = 0b00000000000000000000000000001010; // binary representation of decimal 10
    
    printf("%d\n", a);
    
    // To get -10
    // 1) reverse the binary digit of 10
    
    int aComplement = 0b11111111111111111111111111110101; // caveman way
    //int aComplement = ~a; // using bitwise one complement operator
    
    // 2) add 1 to the complement bits, use hex here for the sake of simplicity
    aComplement += 0x1;
    
    printf("%d\n", aComplement);
    
    return 0;
}
