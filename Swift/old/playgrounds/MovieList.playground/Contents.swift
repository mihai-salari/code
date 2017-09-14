//: Playground - noun: a place where people can play

import Cocoa

class User {
    var name: String
    var userLists: [String: List] = [:]
    
    func addList(list: List) {
        userLists[list.listName] = list
    }
    
    func listForName(name: String) -> List? {
        if userLists[name] != nil {
            return userLists[name]
        } else {
            return nil
        }
    }
    
    init(name: String) {
        self.name = name
    }
}

class List {
    var listName: String
    var movieTitles = Set<String>()
    
    init(with listName: String) {
        self.listName = listName
    }
    
    func printList() {
        if !movieTitles.isEmpty {
            for movieTitle in movieTitles {
                print(movieTitle)
            }
        } else {
            print("Movie list is empty.")
        }
    }
}

var list1 = List(with: "My Movie List")
list1.printList()
list1.movieTitles = ["Titanic"]
list1.printList()

let jane = User(name: "Jane")
let john = User(name: "John")

jane.addList(list: list1)
john.addList(list: list1)
print(jane.userLists["My Movie List"]?.movieTitles)
print(john.userLists["My Movie List"]?.movieTitles)
jane.userLists["My Movie List"]?.movieTitles.insert("Blood Diamond")
print(jane.userLists["My Movie List"]?.movieTitles)
print(john.userLists["My Movie List"]?.movieTitles)

let janeList = jane.listForName(name: "My Movie List")
print(janeList?.movieTitles)
