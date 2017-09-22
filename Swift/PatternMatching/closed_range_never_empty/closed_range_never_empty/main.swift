import Foundation

let count = 1

// Closed range can never be empty
for i in 1...count {
    print(i)
}

for i in 1..<count {
    print(i)
}
