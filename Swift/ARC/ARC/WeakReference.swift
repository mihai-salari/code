import Foundation

class PersonWithWeakApartment: Person {
    var apartmentWeak: ApartmentWithWeakPerson?
    
    deinit {
        print("\(#file): \(name) is being deinitialized")
    }
}

class ApartmentWithWeakPerson {
    let unit: String
    weak var tenant: PersonWithWeakApartment?
    
    init(unit: String) {
        self.unit = unit
        print("\(#file): \(unit) is being initialized")
    }
    
    deinit {
        print("\(#file): Apartment \(unit) is being deinitialized")
    }
}
