import Cocoa

class Person {
    let firstName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

class Tutorial {
    let title: String
    let author: Person
    let type: String
    let publishDate: Date
    
    init(title: String, author: Person, type: String, publishDate: Date) {
        self.title = title
        self.author = author
        self.type = type
        self.publishDate = publishDate
    }
}

let tutorial = Tutorial(title: "Hacking for the Idiots", author: Person.init(firstName: "Stone", lastName: "Grass", age: 9), type: "Security", publishDate: Date())

// Using keypath
let title = \Tutorial.title // create a keypath for the 'title' property of the Tutorial class
let tutorialTitle = tutorial[keyPath: title] // access it using keyPath subscript

// Can access several deep
let authorName = \Tutorial.author.fullName
var tutorialAuthorName = tutorial[keyPath: authorName]

// or appending keypath to existing keypath
let authorPath = \Tutorial.author
let authorNamePath = authorPath.appending(path: \.fullName)
tutorialAuthorName = tutorial[keyPath: authorNamePath]
