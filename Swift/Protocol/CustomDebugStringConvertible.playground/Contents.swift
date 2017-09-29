import Cocoa

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

extension Student: CustomDebugStringConvertible {
    var debugDescription: String {
        return "firstName = \(firstName), lastName = \(lastName), email = \(email)"
    }
}

let foo = Student(firstName: "Foo", lastName: "Bar", email: "foo.bar@example.com")
debugPrint(foo) // print only in debug configuration
