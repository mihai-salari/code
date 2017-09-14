#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    float weight = 54.5;
    
    if (weight > 60) {
        printf("You are fat!\n");
    } else {
        printf("You need to get more weight!\n");
    }
    
    if (0) {
        printf("0 is true\n");
    } else {
        printf("0 is false\n");
    }
    
    if (1) {
        printf("1 is true\n");
    } else {
        printf("1 is false\n");
    }
    
    if (99) {
        printf("99 is true\n");
    } else {
        printf("99 is false\n");
    }
    
    int age = 37;
    
    if ((weight >= 55) || (age <= 40)) {
        printf("You are getting old and fat!\n");
    }
    
    weight = 75;
    
    if (weight >= 90) {
        printf("Weight is over 90\n");
    } else if (weight >= 80) {
        printf("Weight is over 80\n");
    } else if (weight >= 70) {
        printf("Weight is over 70\n");
    } else {
        printf("I don't care anymore\n");
    }
    
    // Ternary operator
    float newWeight = (weight >= 50) ? (weight - 100) : (weight + 100);
    
    printf("newWeight is %f\n", newWeight);
    
    return 0;
}
