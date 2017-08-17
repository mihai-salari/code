#include <iostream>

int main(int argc, const char * argv[]) {
    double kph;
    double mph;
    
    std::cout << "Enter speed in kph: ";
    std::cin >> kph;
    
    mph = kph * 0.6213712;
    
    std::cout << "Speed is " << mph << "mph.\n";
    
    return 0;
}
