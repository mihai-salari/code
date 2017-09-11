import Foundation

enum Direction {
    case east
    case south
    case west
    case north
}

let heading = Direction.east

switch heading {
case .east:
    print("East")
case .south:
    print("South")
case .west:
    print("West")
case .north:
    print("North")
}
