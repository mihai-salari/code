/*
 Note: 
 
 This is not a complete game, it is an example of functional programming
 with Swift.
 
 The problem we are looking at here is to determine whether or not a given
 point is in range, without being too close to friendly ships or to us.
 */

import Foundation

// #1 Assume our ship is located at the origin.

typealias Distance = Double

struct Position {
    var x: Double
    var y: Double
}

extension Position {
    // The distance of point (x, y) from origin (0, 0)
    // 因為是從原點算起，所以 x 和 y 就是目標到原點的距離。
    func within(range: Distance) -> Bool {
        return sqrt(x * x + y * y) <= range
    }
}

var theShitPosition = Position(x: 10, y: 10)
var firingRange: Distance = 20.0

if theShitPosition.within(range: firingRange) {
    print("Fire!")
} else {
    print("Hold!")
}

// #2 Our ship is at a location other than the origin, and only target enemy
// ship if it is at least unsafeRange away from us.

struct Ship {
    var position: Position
    var firingRange: Distance
    var unsafeRange: Distance
}

extension Ship {
    func canEngage(ship target: Ship) -> Bool {
        let dx = target.position.x - position.x
        let dy = target.position.y - position.y
        let targetDistance = sqrt(dx * dx + dy * dy)
        
        return targetDistance <= firingRange && targetDistance > unsafeRange
    }
}

var foreverWin = Ship(position: Position.init(x: 2, y: 5), firingRange: 20, unsafeRange: 10)
var theShit = Ship(position: Position.init(x: 20, y: 10), firingRange: 10, unsafeRange: 8)

if foreverWin.canEngage(ship: theShit) {
    print("Fire!")
} else {
    print("Hold!")
}

// #3 Avoid targeting enemy ships that are too close to one of your other
// ships.

extension Ship {
    func canSafelyEngage(ship target: Ship, friendly: Ship) -> Bool {
        let dx = target.position.x - position.x
        let dy = target.position.y - position.y
        let targetDistance = sqrt(dx * dx + dy * dy)
        
        let friendlyDx = friendly.position.x - target.position.x
        let friendlyDy = friendly.position.y - target.position.y
        let friendlyDistance = sqrt(friendlyDx * friendlyDx + friendlyDy * friendlyDy)
        
        return (targetDistance <= firingRange) && (targetDistance > unsafeRange) && (friendlyDistance > unsafeRange)
    }
}

// #4 Clean up above code by adding helpers

extension Position {
    var length: Double {
        return sqrt(x * x + y * y)
    }
    
    func minus(_ p: Position) -> Position {
        return Position(x: x - p.x, y: y - p.y)
    }
}

extension Ship {
    func canSafelyEngage2(ship target: Ship, friendly: Ship) -> Bool {
        let targetDistance = target.position.minus(position).length
        let friendlyDistance = friendly.position.minus(target.position).length
        
        return (targetDistance <= firingRange) && (targetDistance > unsafeRange) && (friendlyDistance > unsafeRange)
    }
}

var friend = Ship(position: Position.init(x: -5, y: 2), firingRange: 100, unsafeRange: 20)

if foreverWin.canSafelyEngage2(ship: theShit, friendly: friend) {
    print("Fire!")
} else {
    print("Hold!")
}

/*
 * First-Class Functions
 *
 */

// Instead of defining an object or struct to represent regions, we represent
// a region by a function that determines if a given point is in the region or not.

typealias Region = (Position) -> Bool

func pointInRange(point: Position) -> Bool {
    return false
}

// Circle centered around the origin.
func circle(radius: Distance) -> Region {
    return {
        point in
        point.length <= radius
    }
}

// Circle that's centered around a certain position.
func circle2(radius: Distance, center: Position) -> Region {
    return {
        point in
        point.minus(center).length <= radius
    }
}

// This function shifts a region by a certain offset.
func shift(_ region: @escaping Region, by offset: Position) -> Region {
    return {
        point in
        region(point.minus(offset))
    }
}

// Now we can use above function like this, for example a circle that's centered
// at (5, 5) and has a radius of 10 can now be expressed like this.
let circle3 = shift(circle(radius: 10.0), by: Position.init(x: 5, y: 5))

func invert(_ region: @escaping Region) -> Region {
    return {
        point in
        !region(point)
    }
}

func intersect(_ region: @escaping Region, with other: @escaping Region) -> Region {
    return {
        point in
        region(point) && other(point)
    }
}

func union(_ region: @escaping Region, with other: @escaping Region) -> Region {
    return {
        point in
        region(point) || other(point)
    }
}

func subtract(_ region: @escaping Region, from original: @escaping Region) -> Region {
    return intersect(original, with: invert(region))
}

// Refactor original problem using above functions.

extension Ship {
    func canFunctionallySafelyEngageShip(target: Ship, friendly: Ship) -> Bool {
        let rangeRegion = subtract(circle(radius: unsafeRange), from: circle(radius: firingRange))
        let firingRegion = shift(rangeRegion, by: position)
        let friendlyRegion = shift(circle(radius: unsafeRange), by: friendly.position)
        let resultRegion = subtract(friendlyRegion, from: firingRegion)
        
        return resultRegion(target.position)
    }
}

if foreverWin.canFunctionallySafelyEngageShip(target: theShit, friendly: friend) {
    print("Fire!")
} else {
    print("Hold!")
}
