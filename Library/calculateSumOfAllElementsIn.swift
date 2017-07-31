import Foundation

func calculateSumOfAllElements(in array: [Int]) -> Int? {
	if array.isEmpty {
		return nil
	}
	
	return array.reduce(0) { $0 + $1 }
}

let numbers = [1, 2, 3, 4, 5]

if let result = calculateSumOfAllElements(in: numbers) {
	print("Result is \(result)")
} else {
	print("Result is nil")
}