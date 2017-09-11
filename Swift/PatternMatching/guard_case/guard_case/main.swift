import Foundation

func process(point: (x: Int, y: Int, z: Int)) -> String {
    if case (0, 0, 0) = point {
        return "at origin"
    }
    
    return "not at origin"
}

let point = (x: 0, y: 0, z: 0)

print("Point is \(process(point: point)).")
