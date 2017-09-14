#include <stdio.h>

typedef struct {
    float heightInMeters;
    float weightInKilos;
} Person;

int main(int argc, const char * argv[]) {
    
    Person mikey;
    mikey.heightInMeters = 1.65;
    mikey.weightInKilos = 65.5;
    
    Person aaron;
    aaron.heightInMeters = 1.80;
    aaron.weightInKilos = 128.0;
    
    printf("Mikey is %.1f meters tall and weighs %.1f kilograms\n", mikey.heightInMeters, mikey.weightInKilos);
    printf("Aaron is %.1f meters tall and weighs %.1f kilograms\n", aaron.heightInMeters, aaron.weightInKilos);
    
    return 0;
}
