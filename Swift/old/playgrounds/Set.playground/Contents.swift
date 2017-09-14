//: Playground - noun: a place where people can play

import UIKit

var model = Set<String>()
model

model.insert("iPhone SE")
print(model)

print(model.insert("iPhone SE"))
print(model.insert("iPhone 4"))
print(model)

model.insert("iPhone 6 Plus")
print(model)

var color = Set(["Black", "White", "Blue"])
color.insert("Red")

print(color)

for c in color {
    print(c)
}

var cars: Set = ["Peugeot", "Audi", "Volvo", "Proton"]

print(cars)

let myCities = Set(["Pinang", "Ipoh", "Kuala Lumpur"])
let yourCities = Set(["Ipoh"])

if yourCities.isSubset(of: myCities) {
    print("You are my subset!")
}

var set1: Set = ["a", "b", "c", "d"]
var set2: Set = ["a", "b", "e", "f"]

print(set1)
print(set2)

set1.formUnion(set2)
print(set1)
print(set2)

set1.formIntersection(set2)
print(set1)
print(set2)