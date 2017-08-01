import Cocoa

// The String is related to raw value
enum CarBrand: String, CustomStringConvertible {
    case audi = "Audi"
    case bmw = "BMW"
    case honda = "Honda"
    case mazda = "Mazda"
    case nissan = "Nissan"
    case peugeot = "Peugeot"
    case volvo = "Volvo"
    
    var description: String {
        return self.rawValue
    }
}

let myCar = CarBrand.peugeot
print(myCar)
