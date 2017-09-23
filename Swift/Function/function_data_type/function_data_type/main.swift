import Foundation

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ c: Int, _ d: Int) -> Int {
    return c - d
}

var doSomething = add
print(doSomething(2, 3))
doSomething = subtract
print(doSomething(2, 3))

// A function that takes another function as parameter
func aFunction(_ f: (Int, Int) -> Int, a: Int, b: Int) -> Int {
    return f(a, b)
}

print(aFunction(add, a: 1, b: 1))
