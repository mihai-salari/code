#include <stdio.h>
#include <unistd.h> // sleep()

float lastTemperature;
static float staticLastTemperature;

void congratulateStudent(char *student, char *course, int numDays) {
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

float fahrenheitFromCelsius(float cel) {
    float fahr = cel * 1.8 + 32.0;
    lastTemperature = fahr;
    staticLastTemperature = fahr;
    
    printf("%f Celsius is %f Fahrenheit.\n", cel, fahr);
    
    return fahr;
}

int main(int argc, const char * argv[]) {
    
    congratulateStudent("Kate", "Cocoa", 5); sleep(2);
    congratulateStudent("Mike", "Objective-C", 2); sleep(2);
    //congratulateStudent("Foo", "Bar", 999); sleep(10);
    congratulateStudent("Liz", "Swift", 1);

    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    
    printf("Water freezes at %f degrees Fahrenheit.\n", freezeInF);
    
    printf("Global variable: %f\n", lastTemperature);
    printf("Static variable: %f\n", staticLastTemperature);
    
    return 0;
}
