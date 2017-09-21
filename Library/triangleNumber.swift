import Foundation

/*
	Calculate triangle number.
*/

func triangleNumberFor(n: Int) -> Int {
	var sum = 0
	
	for i in 1...n {
		sum += i
	}
	
	return sum
}

print(triangleNumberFor(n:10))