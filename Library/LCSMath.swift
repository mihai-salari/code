import Foundation

enum LCSMath {
	static func factorial(of number: Int) -> Int {
		return (1...number).reduce(1, *)
	}
	
	static func triangleNumber(of number: Int) -> Int {
		return (1...number).reduce(1, +)
	}
	
	// The prime factors of a positive integer are the prime numbers that divide
	// that integer exactly. The prime factorization of a positive integer is a list
	// of the integer's prime factors, together with their multiplicities; the process
	// of determining these factors is called integer factorization.
	static func primeFactors(of number: Int) -> [Int] {
		var remainingValue = number
		var testFactor = 2
		var primes: [Int] = []
		
		// The square of the testFactor should never be larger than the remainingValue,
		// if it is, the remainingValue itself must be prime and it is added to the primes list.
		while testFactor * testFactor <= remainingValue {
			if remainingValue % testFactor == 0 {
				primes.append(testFactor)
				remainingValue /= testFactor
			} else {
				testFactor += 1
			}						
		}
		
		if remainingValue > 1 {
			primes.append(remainingValue)
		}
		
		return primes
	}
	
	// Double is not a good type for money
	static func calculateTotalReturn(of capital: Double, at interestRate: Double, for years: Int) -> Double {
		return capital * pow(M_E, interestRate * Double(years))
	}
}

print(LCSMath.factorial(of: 10))
print(LCSMath.triangleNumber(of: 10))
print(LCSMath.primeFactors(of: 864))
print(LCSMath.calculateTotalReturn(of: 25000, at: 0.07, for: 7))