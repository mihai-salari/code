#include <stdio.h>

#define n 10

int functionalSquareOf(int number);

int main(int argc, const char * argv[]) {
    int answer = functionalSquareOf(n);
    
    printf("square of %d = %d\n", n, answer);
    
    return 0;
}

int functionalSquareOf(int number) {
    static int count = 1;
    static int answer;
    
    int list[number]; // create array with size number
    
    printf("count is %d\n", count);
    
    list[count] = count * count; // store the squared of count into array
    
    printf("value in list[%d] = %d\n", count, list[count]);
    
    if (count <= n && number > 0) {
        count += 1;
        
        if (number != 1) {
            functionalSquareOf(number - 1);
        } else {
            answer = list[count - 1];
        }
        
    }
    
    return answer;
}
