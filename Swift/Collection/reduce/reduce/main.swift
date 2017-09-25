import Foundation

let names = ["Bob", "Danny", "Foo", "Mandy", "Al"]

print(names.filter( {$0.count >= 3 }).reduce("", { $0 + $1 + " "}))
