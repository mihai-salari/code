struct LCSMath {
	static func factorial(of number: Int) -> Int {
		return (1...number).reduce(1, *)
	}
	
	static func triangleNumber(of number: Int) -> Int {
		return (1...number).reduce(1, +)
	}
}

print(LCSMath.factorial(of: 10))
print(LCSMath.triangleNumber(of: 10))