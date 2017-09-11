import Foundation

let coordinate = (x: 1, y: 0, z: 0)
print("coordinate = \(coordinate)")

func printMessage() {
    print("result = coordinate is along the x-axis")
}

// without pattern matching
if (coordinate.y == 0) && (coordinate.z == 0) {
    printMessage()
}

// with pattern matching
if case (_, 0, 0) = coordinate {
    printMessage()
}

/*
 
 coordinate = (x: 1, y: 0, z: 0)
 result = coordinate is along the x-axis
 result = coordinate is along the x-axis
 Program ended with exit code: 0
 
*/
