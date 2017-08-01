import Cocoa

protocol Vehicle {
    func move()
}

struct Car: Vehicle {
    func move() {
        print("Moving... moving... moving...")
    }
    
    func drinkPetrol() {
        print("Drinking... drinking... drinking...")
    }
}

struct Train: Vehicle {
    func move() {
        print("Vroom... vroom... vroom...")
    }
}

// is relationship

func isCar(_ v: Vehicle) -> Bool {
    return v is Car
}

let car = Car()
let train = Train()

print(isCar(car))
print(isCar(train))

// as relationship, casting down to actual type

func tellDrinkPetrol(_ v: Vehicle) {
    (v as? Car)?.drinkPetrol()
}

tellDrinkPetrol(car)
tellDrinkPetrol(train)
