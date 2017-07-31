import Foundation

class PersonWithWeakApartment: Person {
    var apartmentWeak: ApartmentWithWeakPerson?
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class ApartmentWithWeakPerson {
    let unit: String
    weak var tenant: PersonWithWeakApartment?
    
    init(unit: String) {
        self.unit = unit
        print("\(unit) is being initialized")
    }
    
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}
