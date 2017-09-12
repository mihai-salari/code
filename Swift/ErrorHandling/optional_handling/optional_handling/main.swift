import Foundation

class Pet {
    var breed: String?
    
    init(breed: String? = nil) {
        self.breed = breed
    }
}

class Person {
    let pet: Pet
    
    init(pet: Pet) {
        self.pet = pet
    }
}

let delia = Pet(breed: "pug")
let olive = Pet()

let janie = Person(pet: olive)

if let dogBreed = janie.pet.breed {
    print("Olive is a \(dogBreed)")
} else {
    print("Olive's breed is unknown")
}
