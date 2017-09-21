import Foundation

/*
	Calculate the factorial of n.
*/

func factorialOf(n: Int) -> Int {
    var result = 1
		
	for i in 1...n {
		result *= i					
	}
        
    return result
}

print(factorialOf(n: 20))