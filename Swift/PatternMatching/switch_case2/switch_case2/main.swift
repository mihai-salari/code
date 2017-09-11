import Foundation

func process(population: Int) -> String {
    switch population {
    case 0:
        return "zero people"
    case 1:
        return "only one person"
    case 2...4:
        return "a few people"
    case 5...8:
        return "several people"
    case 9...15:
        return "many people"
    default:
        return "too many people"
    }
}

let population = 3
print("There \(population <= 1 ? "is" : "are") \(process(population: population)) in the room.")
