import Foundation

let names: [String?] = [
    "Michelle",
    nil,
    "Brandon",
    "Christine",
    nil,
    "David",
    "James",
    "Keith",
    "Dora",
    "Alex",
    nil,
    "Dick"
]

for name in names {
    switch name {
    case .some(let value):
        print("Name = \(value)")
    case .none:
        print("Name = nil")
    }
}

/*
 
 Name = Michelle
 Name = nil
 Name = Brandon
 Name = Christine
 Name = nil
 Name = David
 Name = James
 Name = Keith
 Name = Dora
 Name = Alex
 Name = nil
 Name = Dick
 Program ended with exit code: 0
 
*/
