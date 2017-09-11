import Foundation

let point = (x: 1, y: 1, z: 0)

// Match any value on the x-axis and y-axis, and 0 on the z-axis
if case (let x, let y, 0) = point {
    print("Point is x: \(x), y: \(y), z: 0")
}

if case let (x, y, 0) = point {
    print("Point is x: \(x), y: \(y), z: 0")
}
