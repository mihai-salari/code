#include <stdio.h>
#define width 400
#define heigh 300

int main(int argc, const char * argv[]) {
    int number_of_bytes_needed = width * heigh * sizeof(unsigned char);
    
    unsigned char *pixels = (unsigned char *)malloc(number_of_bytes_needed);
    
    free(pixels);
    pixels = NULL;
    
    return 0;
}
