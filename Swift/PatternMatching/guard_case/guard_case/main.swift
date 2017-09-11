import Foundation

func process(point: (x: Int, y: Int, z: Int)) -> String {
    guard case (0, 0, 0) = point else {
        return "not at origin"
    }
    
    return "at origin"
}

let point = (x: 0, y: 0, z: 0)

print("Point is \(process(point: point)).")
