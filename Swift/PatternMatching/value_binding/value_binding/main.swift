import Foundation

let point = (x: 1, y: 1)

// Match any value on the x-axis and y-axis
if case (let x, let y) = point {
    print("Point is x: \(x), y: \(y)")
}
