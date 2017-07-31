import Foundation

/*
	Calculate the fibonacci number,
	e.g. f(20) = 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765
*/

func calculateFibonacci(for number: Int) -> Int {
    var sum = 0
    
    if number == 0 {
        return 0
    } else if number == 1 || number == 2 {
        return 1
    } else {
        sum = calculateFibonacci(for: number - 1) + calculateFibonacci(for: number - 2)
        return sum
    }
}

for i in 0...20 {
    print(calculateFibonacci(for: i), separator: " ", terminator: " ")
}