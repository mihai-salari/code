import Foundation

func process(point: (x: Int, y: Int, z: Int)) -> String {
    let closeRange = -2...2
    let midRange = -5...5
    
    switch point {
    case (0, 0, 0):
        return "at origin"
    case (closeRange, closeRange, closeRange):
        return "very close to origin"
    case (midRange, midRange, midRange):
        return "nearby origin"
    default:
        return "not near origin"
    }
}

let point = (x: 15, y: 5, z: 3)
print("Point \(point) is \(process(point: point)).")
