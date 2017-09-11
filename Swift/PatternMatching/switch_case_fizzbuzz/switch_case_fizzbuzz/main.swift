import Foundation

for i in 1...100 {
    switch (i % 3, i % 5) {
    case (0, 0):
        print("FizzBuzz", terminator: " ") // to end each line with a space character instead of a newline
    case (0, _):
        print("Fizz", terminator: " ")
    case (_, 0):
        print("Buzz", terminator: " ")
    case (_, _): // matches any value
        print(i, terminator: " ")
    }
}

print("")
