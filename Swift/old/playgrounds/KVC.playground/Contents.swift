//: Playground - noun: a place where people can play

import Cocoa

class Student: NSObject {
    var name = ""
    var gradeLevel = 0
}

let s = Student()

print(s.name)
print(s.gradeLevel)

s.setValue("Kelly", forKey: "name")
print(s.name)

s.setValue(3, forKey: "gradeLevel")
print(s.gradeLevel)

print(s.value(forKey: "name"))
print(s.value(forKey: "gradeLevel"))

