//: Playground - noun: a place where people can play

import UIKit

// Without Protocol...

func printTable(_ data: [[String]], withColumnLabels columnLabels: String...) {
    // Create first row containing column labels
    var firstRow = "|"
    
    // Also keep track of the width of each column
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.characters.count)
    }
    
    print(firstRow)
    
    for row in data {
        // Start the output string
        var out = "|"
        
        // Append each item in this row to the string
        /*for item in row {
            out += " \(item) |"
        }*/
        
        // With column padding
        for (j, item) in row.enumerated() {
            //print("Log: columnWidths is \(columnWidths[j])")
            //print("Log: \(item.characters.count)")
            let paddingNeeded = columnWidths[j] - item.characters.count
            //print("Log: \(paddingNeeded)")
            let padding = repeatElement("_", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        
        // Done - print it
        print(out)
    }
}

let data = [
    ["Joe", "30", "6"],
    ["Karen", "40", "18"],
    ["Fred", "50", "20"],
]

printTable(data, withColumnLabels: "Employee Name", "Age", "Years of Experience")

print("")

// With Protocol...

protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }
    
    func label(forColumn column: Int) -> String
    func itemFor(row: Int, column: Int) -> String
}

func printTable(_ dataSource: TabularDataSource & CustomStringConvertible) {
    print("Table: \(dataSource.description)")
    
    // Create first row containing column labels
    var firstRow = "|"
    
    // Also keep track of the width of each column
    var columnWidths = [Int]()
    
    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.characters.count)
    }
    
    print(firstRow)
    
    for i in 0 ..< dataSource.numberOfRows {
        // Start the output string
        var out = "|"
        
        // With column padding
        for j in 0 ..< dataSource.numberOfColumns {
            let item = dataSource.itemFor(row: i, column: j)
            let paddingNeeded = columnWidths[j] - item.characters.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        
        // Done - print it
        print(out)
    }
}

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: TabularDataSource, CustomStringConvertible {
    let name: String
    var people = [Person]()
    
    init(name: String) {
        self.name = name
    }
    
    mutating func add(_ person: Person) {
        self.people.append(person)
    }
    
    // CustomStringConvertible
    var description: String {
        return "Department (\(name))"
    }
    
    // TabularDataSource
    
    var numberOfRows: Int {
        return people.count
    }
    
    var numberOfColumns: Int {
        return 3
    }
    
    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Employee Name"
        case 1: return "Age"
        case 2: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        
        switch column {
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsOfExperience)
        default: fatalError("Invalid column!")
        }
    }
}

var department = Department(name: "Engineering")
department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20))

printTable(department)

// Mutating methods

protocol Toggleable {
    mutating func toggle()
}

enum Lightbulb: Toggleable {
    case on
    case off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}