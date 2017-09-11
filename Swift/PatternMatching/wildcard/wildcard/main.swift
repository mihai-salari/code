import Foundation

func process(points: (x: Int, y: Int)) -> String {
    switch points {
    case (0, 0):
        return "at the origin"
    case (0, _):
        return "at y-axis"
    case (_, 0):
        return "at x-axis"
    case (_, _):
        return "at somewhere else"
    }
}

let coordinates = [(0, 0), (3, 5), (1, 0), (0, 1), (9, 9)]

for coordinate in coordinates {
    print("Point \(coordinate) is \(process(points: coordinate)).")
}

/*
 
 Point (0, 0) is at the origin.
 Point (3, 5) is at somewhere else.
 Point (1, 0) is at x-axis.
 Point (0, 1) is at y-axis.
 Point (9, 9) is at somewhere else.
 Program ended with exit code: 0
 
*/
