import Foundation

struct PetHouse {
    let squareFeet: Int
    
    init?(squareFeet: Int) {
        if squareFeet < 1 {
            return nil
        }
        
        self.squareFeet = squareFeet
    }
}

let tooSmall = PetHouse.init(squareFeet: 0)
let house = PetHouse(squareFeet: 10)

print("tooSmall = \(tooSmall)")
print("house = \(house)")

/*
 
 tooSmall = nil
 house = Optional(failable_initializer.PetHouse(squareFeet: 10))
 Program ended with exit code: 0
 
 */
