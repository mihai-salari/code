//: Playground - noun: a place where people can play

import Cocoa

func greet(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let personalGreeting = greet(name: "Matt", withGreeting: "Hello,")
print(personalGreeting)

func greeting(forName name: String) -> (String) -> String {
    func greeting(_ greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    
    return greeting
}

let greetingForFoo = greeting(forName: "Foo")
let fooGreeting = greetingForFoo("Hello,")
print(fooGreeting)

func greetingWithClosure(forName name: String) -> (String) -> String {
    return {
        (greeting: String) -> String in
        return "\(greeting) \(name)"
    }
}

let greetingForBoo = greetingWithClosure(forName: "Boo")
let booGreeting = greetingForBoo("Fuck You,")
print(booGreeting)

struct Person: CustomStringConvertible {
    var firstName = "Foo"
    var lastName = "Bar"
    
    var description: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func changeTo(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var p = Person()
print(p)
p.firstName
p.lastName
let changeNameMethod = Person.changeTo
let changeNameMethodTo = changeNameMethod(&p)
changeNameMethodTo("John", "Broke")
p.firstName
p.lastName
print(p)
