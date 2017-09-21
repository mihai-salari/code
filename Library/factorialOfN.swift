import Foundation

/*
	Calculate the factorial of n.
*/

func factorialOf(n: Int) -> Int {
    var n = n
    var result = 1
    
    while n != 0 {
        result *= n
        n -= 1
    }
    
    return result
}

print(factorialOf(n: 10))