import Foundation

let coordinate = (x: 1, y: 0, z: 0)
print(coordinate)

func printMessage() {
    print("along the x-axis")
}

// without pattern matching
if (coordinate.y == 0) && (coordinate.z == 0) {
    printMessage()
}

// with pattern matching
if case (_, 0, 0) = coordinate {
    printMessage()
}
