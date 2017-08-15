#include <iostream>

int main(int argc, const char * argv[]) {
    const int NUMBER_OF_PRIMES = 7;
    
    int primes[NUMBER_OF_PRIMES] = {2, 3, 5, 7, 11, 13, 17};
    
    int idx = 10; // array bounds error
    
    std::cout << "The tenth prime is " << primes[idx] << "\n";
    
    return 0;
}
