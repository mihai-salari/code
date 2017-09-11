import Foundation

for number in 1...100 {
    switch number {
    case let n where n % 2 == 0:
        print("Even")
    default:
        print("Odd")
    }
}
