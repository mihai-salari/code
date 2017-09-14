//: Playground - noun: a place where people can play

import Cocoa

struct Point {
    let x: Int
    let y: Int
}

extension Point: Equatable {
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
}

extension Point: Comparable {
    // Should use euclidean distance to calculate this
    static func <(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }
}

let a = Point(x: 1, y: 2)
let b = Point(x: 1, y: 2)

print("a == b is \(a == b)")
print("a != b is \(a != b)")
print("a <= b is \(a <= b)")
print("a < b is \(a < b)")