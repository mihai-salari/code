//: Playground - noun: a place where people can play

import Cocoa

for index in stride(from: 10.0, through: 9.0, by: -0.1) {
    print(index)
}

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    if number % divisor == 0 {
        return true
    }
    
    return false
}

isNumberDivisible(10, by: 2)
isNumberDivisible(9, by: 2)

func isPrime(_ number: Int) -> Bool {
    
    if number <= 0 {
        print("Number is less than 0")
        
        return false
    } else if number == 1 {
        print("Number 1 is not a prime number")
        return false
    } else {
        for n in 2 ... number {
            print("\(#function): n is \(n)")
            
            if isNumberDivisible(number, by: n) && number != n {
                print("Number is \(number), n is \(n) return false")
                return false
            } else if isNumberDivisible(number, by: n) && number == n {
                print("Number is \(number), n is \(n) return true")
                return true
            }
        }
    }
    
    return false
}

isPrime(13)
isPrime(22)
isPrime(1)
isPrime(2)
isPrime(433)
isPrime(6)
//isPrime(8893)


// Fibonacci

func getFibonacciFor(_ number: Int) -> Int {
    var sum = 0
    
    if number == 0 {
        return 0
    } else if number == 1 || number == 2 {
        return 1
    } else {
        sum = getFibonacciFor(number - 1) + getFibonacciFor(number - 2)
        return sum
    }
}

for i in 0...2 {
    print(getFibonacciFor(i), separator: "-", terminator: " ")
}

//

func getRowAndColumnForPosition(at v: Int) -> (row: Int, column: Int) {
    // row from 0 to 7
    let row = v / 8
    
    // column from 0 to 7
    let column = v % 8
    
    return (row, column)
}

print(getRowAndColumnForPosition(at: 10))
