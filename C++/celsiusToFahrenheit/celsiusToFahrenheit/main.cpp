#include <iostream>

int main(int argc, const char * argv[]) {
    float celsius;
    float fahrenheit;
    
    std::cout << "Enter a value in Celsius: ";
    std::cin >> celsius;
    
    fahrenheit = (9 * celsius) / 5 + 32;
    
    std::cout << celsius << " degree celsius is " << fahrenheit << " degree fahrenheit.\n";
    
    return 0;
}
