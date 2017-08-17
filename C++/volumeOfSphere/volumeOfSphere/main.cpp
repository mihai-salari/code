#include <iostream>
#include <math.h>

int main(int argc, const char * argv[]) {
    double radius;
    double volume;
    
    std::cout << "Enter radius of the sphere: ";
    std::cin >> radius;
    
    volume =  (4 * M_PI * pow(radius, 3)) / 3;
    
    std::cout << "The volume of the sphere is " << volume << ".\n";
    
    return 0;
}
