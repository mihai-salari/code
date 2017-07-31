import Foundation

class PersonWithApartment: Person {
    var apartment: Apartment?
    
    deinit {
        print("\(#file): \(name) is being deinitialized")
    }
}

class Apartment {
    let unit: String
    var tenant: PersonWithApartment?
    
    init(unit: String) {
        self.unit = unit
        print("\(#file): \(unit) is being initialized")
    }
    
    deinit {
        print("\(#file): Apartment \(unit) is being deinitialized")
    }
}
