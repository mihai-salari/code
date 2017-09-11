import Foundation

func fibonacci(position: Int) -> Int {
    switch position {
    case let n where n <= 1:
        return 0
    case 2:
        return 1
    case let n:
        return fibonacci(position: n - 1) + fibonacci(position: n - 2)
    }
}

print("Fibonacci for 15 = \(fibonacci(position: 15))")
