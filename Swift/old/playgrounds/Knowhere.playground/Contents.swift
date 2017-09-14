//: Playground - noun: a place where people can play

import UIKit

let numberOfStoplights: Int = 4
var population: Int

population = 5422

let levelOfUnemployment: Double = 3.4

let townName = "Knowhere"
let townDescription = "\(townName) has a population of \(population), unemployment rate of \(levelOfUnemployment), and \(numberOfStoplights) stoplights."

print(townDescription)

var message: String

if population < 10000 {
    message = "\(population) is a small town!"
} else {
    message = "\(population) is pretty big!"
}

print(message)

var hasPostOffice: Bool = true

hasPostOffice = false

if !hasPostOffice {
    print("Where do we buy stamps?")
}

// Ternary operator
message = population < 5000 ? "\(population) is a small town!" : "\(population) is pretty big!"
print(message)

population = 23128888

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else if population >= 50000 && population < 100000 {
    message = "\(population) is pretty big!"
} else {
    message = "\(population) is ****ing large!!!"
}

print(message)

// Function as return type

func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
        return lights + existingLights
    }
    
    //return buildRoads(byAddingLights:toExistingLights:)
    return buildRoads
}

var stopLights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stopLights = townPlanByAddingLightsToExistingLights(4, stopLights)
print("Knowhere has \(stopLights) stop-lights.")

// Function as argument

func makeTownGrandV2(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

if let townPlanV2 = makeTownGrandV2(withBudget: 1_000_000, condition: evaluate) {
    stopLights = townPlanV2(4, stopLights)
}

print("Knowhere has \(stopLights) stop-lights.")

// Closure capturing values (in their enclosing scope)

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population
    
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    
    return populationTracker
}

var currentPopulation = 1_888
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)

growBy(1000)
growBy(1000)
growBy(1000)
growBy(1000)
currentPopulation = growBy(1000)
print(currentPopulation)

// Closure is reference type

let anotherGrowBy = growBy // Both refer to the same instance
anotherGrowBy(99999) // This will increase the totalPopulation captured
currentPopulation = growBy(1)
print(currentPopulation)
