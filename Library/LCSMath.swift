import Foundation

enum LCSMath {
	static func useEuclidsAlgorithm(_ number1: Int, _ number2: Int) -> Int {
		// Keep replacing the bigger number with the difference of the two numbers,
		// when the numbers are equal, that's the GCF
		
		var number1 = number1
		var number2 = number2
		
		while number1 != number2 {
			if number1 > number2 {
				number1 = number1 - number2
			} else {
				number2 = number2 - number1
			}
		}
		
		return number1
	}
	
	static func isRelativelyPrime(_ number: Int, and anotherNumber: Int) -> Bool {
		// Coprime, GCF is 1 only
		
		let factor1 = Set(factors(of: number))
		let factor2 = Set(factors(of: anotherNumber))
		
		return ((factor1.intersection(factor2)).count == 1)
	}
		
	static func factors(of number: Int) -> [Int] {
		var result: [Int] = []
		var current = 1
		
		while current <= number {
			if number % current == 0 {
				result.append(current)
			}
			
			current += 1
		}
		
		return result
	}
	
	static func calculateFahrenheit(from celsius: Double) -> Double {
		return (celsius * 9 / 5) + 32
	}
	
	static func calculateCelsius(from fahrenheit: Double) -> Double {
		return (fahrenheit - 32) * 5 / 9
	}
	
	static func average(of numbers: [Double]) -> Double {
		let sum = numbers.reduce(0, {
			x, y in
			x + y
		})
		
		return sum/Double(numbers.count)
	}
	
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
	
	// Calculate the return of compound interest investment for n years.
	// Note: Double is not a good type for money.
	static func calculateTotalReturn(of capital: Double, at interestRate: Double, for years: Int) -> Double {
		return capital * pow(M_E, interestRate * Double(years))
	}
}

print(LCSMath.useEuclidsAlgorithm(30, 12))
print(LCSMath.isRelativelyPrime(1, and: 2))
print(LCSMath.factors(of: 89))
print(LCSMath.calculateFahrenheit(from: 30))
print(LCSMath.calculateCelsius(from: 86))
print(LCSMath.average(of: [1, 2, 3, 4, 5]))
print(LCSMath.factorial(of: 10))
print(LCSMath.triangleNumber(of: 10))
print(LCSMath.primeFactors(of: 864))
print(LCSMath.calculateTotalReturn(of: 25000, at: 0.07, for: 7))