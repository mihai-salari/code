import Foundation

class Person {
    let name: String // stored constant property
    
    init(name: String) {
        self.name = name
        print("\(#file): \(name) is being initialized")
    }
    
    deinit {
        print("\(#file): \(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

// Strong references
reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil // ARC will deallocate the Person instance now

// MARK: - Strong Reference Cycle

print("===== strong reference cycle test =====")

var john: PersonWithApartment?
var unit4A: Apartment?

john = PersonWithApartment(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

// Create strong reference cycle
john!.apartment = unit4A
unit4A!.tenant = john

john = nil
unit4A = nil

// MARK: - Weak Reference

print("===== weak reference test =====")

var mark: PersonWithWeakApartment?
var unit10A: ApartmentWithWeakPerson?

mark = PersonWithWeakApartment(name: "Mark Appleseed")
unit10A = ApartmentWithWeakPerson(unit: "10A")

mark!.apartmentWeak = unit10A
unit10A!.tenant = mark

mark = nil
unit10A = nil
