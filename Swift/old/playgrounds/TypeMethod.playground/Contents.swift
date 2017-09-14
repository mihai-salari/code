//: Playground - noun: a place where people can play

import Cocoa

struct Math {
    static func factorial(of number: Int) -> Int {
        return (1...number).reduce(1, *)
    }
    
    static func triangle(of number: Int) -> Int {
        return (1...number).reduce(1, {
            x, y in
            (y * (y + 1)) / 2
        })
    }
}

extension Math {
    static func primeFactors(of value: Int) -> [Int] {
        var remainingValue = value
        var testFactor = 2
        var primes: [Int] = []
        
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
    
    static func isEven(number: Int) -> Bool {
        if number % 2 == 0 {
            return true
        }
        
        return false
    }
    
    static func isOdd(number: Int) -> Bool {
        if !Math.isEven(number: number) {
            return true
        }
        
        return false
    }
}

let factorial = Math.factorial(of: 20) // Max is 20
let triangle = Math.triangle(of: 1444)
let primeFactor = Math.primeFactors(of: 1444)
let iseven1 = Math.isEven(number: 4)
let iseven2 = Math.isEven(number: 9)
let isodd1 = Math.isOdd(number: 9)
let isodd2 = Math.isOdd(number: 4)