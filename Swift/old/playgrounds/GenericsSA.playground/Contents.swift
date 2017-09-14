//: Playground - noun: a place where people can play

import Cocoa

// Values defined by other values

enum PetKind {
    case cat
    case dog
}

struct KeeperKind {
    var keeperOf: PetKind
}

let catKeeper = KeeperKind(keeperOf: PetKind.cat)
let dogKeeper = KeeperKind(keeperOf: PetKind.dog)

// Types defined by other types

class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Cat: Pet { }

class Dog: Pet { }

class Keeper<Animal> {
    var name: String
    var morningCare: Animal
    var eveningCare: Animal
    
    init(name: String, morningCare: Animal, eveningCare: Animal) {
        self.name = name
        self.morningCare = morningCare
        self.eveningCare = eveningCare
    }
}

let catKeeperType = Keeper<Cat>(name: "Foo", morningCare: Cat(name: "Whiskers"), eveningCare: Cat(name: "Sleepy"))
let dogKeeperType = Keeper(name: "Bar", morningCare: Dog(name: "旺財"), eveningCare: Dog(name: "阿狗"))
let mixKeeperType = Keeper(name: "Mixxy", morningCare: Cat(name: "Catty"), eveningCare: Dog(name: "Doggy"))
let stringKeeperType = Keeper(name: "Some String", morningCare: "morning lah", eveningCare: "evening lah")

let cats = ["Miss Gray", "Miss White"].map { Cat(name: $0) }
print(cats.description)

let dogs = ["Sparky", "Rusty", "Algo"].map { Dog(name: $0) }
print(dogs.description)

let pets = [Cat(name: "Mittens"), Dog(name: "Yeller")]
print(pets.description)