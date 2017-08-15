#include <iostream>
#include <assert.h>

int main(int argc, const char * argv[]) {
    int primes[] = {2, 3, 5, 7, 11, 13, 17};
    
    int idx = 10; // array bounds error
    
    assert(idx >= 0);
    assert(idx < (sizeof(primes)/sizeof(primes[0])));    
    
    std::cout << "The tenth prime is " << primes[idx] << "\n";
    
    return 0;
}
