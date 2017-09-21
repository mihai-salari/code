import Foundation

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    if number % divisor == 0 {
        return true
    }
    
    return false
}

func isPrime(_ number: Int) -> Bool {
    
    if number <= 0 {
        print("Number is less than 0")        
        return false
    } else if number == 1 {
        print("Number 1 is not a prime number")
        return false
    } else {
        for n in 2 ... number {            
            if isNumberDivisible(number, by: n) && number != n {
                return false
            } else if isNumberDivisible(number, by: n) && number == n {
                return true
            }
        }
    }
    
    return false
}

print(isPrime(1038))
print(isPrime(1444))
print(isPrime(12345))
print(isPrime(3))