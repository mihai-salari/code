#include <stdio.h>

typedef struct {
    float heightInMeters;
    float weightInKilos;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    
    Person mikey;
    mikey.heightInMeters = 1.65;
    mikey.weightInKilos = 65.5;
    
    Person aaron;
    aaron.heightInMeters = 1.80;
    aaron.weightInKilos = 128.0;
    
    printf("Mikey is %.1f meters tall and weighs %.1f kilograms\n", mikey.heightInMeters, mikey.weightInKilos);
    printf("Aaron is %.1f meters tall and weighs %.1f kilograms\n", aaron.heightInMeters, aaron.weightInKilos);
    
    float bmiMikey = bodyMassIndex(mikey);
    float bmiAaron = bodyMassIndex(aaron);
    
    printf("Mikey has a BMI of %.2f\n", bmiMikey);
    printf("Aaron has a BMI of %.2f\n", bmiAaron);
    
    return 0;
}
