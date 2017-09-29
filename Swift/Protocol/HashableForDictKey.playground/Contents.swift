import Cocoa

// A dictionary key must conform to Hashable protocol

// We have a custom class here, for example
class Student {
    var firstName: String
    var lastName: String
    var email: String
    
    init(firstName: String, lastName: String, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}

// Student objects are considered equal (meaning they describe the same student) if they have the same email address
// Therefore the hash value for a Student must be based on the student's email address
extension Student: Equatable {
    static func ==(lhs: Student, rhs: Student) -> Bool {
        return lhs.email == rhs.email
    }
}

// Since String conforms to Hashable, we can simply return the hash value of email instead
// of calculating a hash ourselves
extension Student: Hashable {
    var hashValue: Int {
        return email.hashValue
    }
}

// Now we can use the Student type as the key in a Dictionary
let john = Student(firstName: "John", lastName: "Appleseed", email: "john@example.com")
let foo = Student(firstName: "Foo", lastName: "Bar", email: "foo@example.com")

let studentIDs = [john: "12345", foo: "88888"]
