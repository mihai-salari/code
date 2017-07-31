import Foundation

class PersonWithApartment: Person {
    var apartment: Apartment?
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let unit: String
    var tenant: PersonWithApartment?
    
    init(unit: String) {
        self.unit = unit
        print("\(unit) is being initialized")
    }
    
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}
