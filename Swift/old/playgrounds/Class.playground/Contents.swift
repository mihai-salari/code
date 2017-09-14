//: Playground - noun: a place where people can play

import Cocoa

struct Grade {
    let letter: String
    let points: Double
    let credits: Double
}

class Person: CustomStringConvertible {
    var firstName: String
    var lastName: String
    
    var description: String {
        return "I am \(firstName) \(lastName)"
    }
    
    init(with firstName: String, and lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let foo = Person(with: "Foo", and: "Bar")
print(foo)

class Student: Person {
    var grades: [Grade] = []
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}

extension Student {
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

let jane = Student(with: "Jane", and: "Bananapeel")
print(jane.fullName)
