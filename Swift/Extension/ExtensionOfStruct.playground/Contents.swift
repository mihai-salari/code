import UIKit

// Extending a Swift stuct make it possible to declare an initializer and keep the implicit initializer.

struct Digit {
    var number: Int
}

extension Digit {
    init() {
        self.init(number: 42)
    }
}

let digit1 = Digit()
let digit2 = Digit(number: 44)

print(digit1)
print(digit2)
