//: Playground - noun: a place where people can play

import Cocoa

struct Location {
    let x: Int
    let y: Int
}

struct DeliveryArea: CustomStringConvertible {
    var range: Double
    let center: Location
    
    var description: String {
        return "Area with range: \(range), location: x is \(center.x), y is \(center.y)"
    }
    
    func contains(_ location: Location) -> Bool {
        let distanceFromCenter = distance(from: (center.x, center.y), to: (location.x, location.y))
        
        return distanceFromCenter < range
    }
    
    // Not sure below implementation is correct or not
    func overlaps(with: DeliveryArea) -> Bool {
        if self.contains(Location(x: with.center.x, y: with.center.y)) {
            return true
        }
        
        return false
    }
}

let storeLocation = Location(x: 2, y: 4)
var storeArea = DeliveryArea(range: 4, center: storeLocation)

struct PizzaOrder {
    var topping: String
    var size: Int
}

func distance(from source: (x: Int, y: Int), to target: (x: Int, y: Int)) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    
    return sqrt(distanceX * distanceX + distanceY * distanceY)
}

let areas = [
    DeliveryArea(range: 2.5, center: Location(x: 2, y: 4)),
    DeliveryArea(range: 4.5, center: Location(x: 9, y: 7))
]

func isInDeliveryRange(location: Location) -> Bool {
    for area in areas {
        let distanceToStore = distance(from: (area.center.x, area.center.y), to: (location.x, location.y))
        
        if distanceToStore < area.range {
            return true
        }
    }
    
    return false
}

let customerLocation1 = Location(x: 8, y: 1)
let customerLocation2 = Location(x: 5, y: 5)

print(isInDeliveryRange(location: customerLocation1))
print(isInDeliveryRange(location: customerLocation2))

let area1 = DeliveryArea(range: 10.5, center: Location(x: 4, y: 5))
let area2 = DeliveryArea(range: 2.1, center: Location(x: 1, y: 1))

print(area1.contains(customerLocation1))
print(area1.contains(customerLocation2))
print(area2.contains(customerLocation1))
print(area2.contains(customerLocation2))

print(area1.overlaps(with: area2))