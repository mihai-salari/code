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

// MARK: - Safe Unowned Reference

print("===== safe unowned reference test =====")

var andy: Customer?

andy = Customer(name: "Andy Appleseed")
andy!.card = CreditCard(number: 1234_5678_8888_8888, customer: andy!)

andy = nil

/*
 
 /Users/choonsiong/Code/Swift/ARC/ARC/main.swift: John Appleseed is being initialized
 /Users/choonsiong/Code/Swift/ARC/ARC/main.swift: John Appleseed is being deinitialized
 ===== strong reference cycle test =====
 /Users/choonsiong/Code/Swift/ARC/ARC/main.swift: John Appleseed is being initialized
 /Users/choonsiong/Code/Swift/ARC/ARC/StrongReferenceCycle.swift: 4A is being initialized
 ===== weak reference test =====
 /Users/choonsiong/Code/Swift/ARC/ARC/main.swift: Mark Appleseed is being initialized
 /Users/choonsiong/Code/Swift/ARC/ARC/WeakReference.swift: 10A is being initialized
 /Users/choonsiong/Code/Swift/ARC/ARC/WeakReference.swift: Mark Appleseed is being deinitialized
 /Users/choonsiong/Code/Swift/ARC/ARC/main.swift: Mark Appleseed is being deinitialized
 /Users/choonsiong/Code/Swift/ARC/ARC/WeakReference.swift: Apartment 10A is being deinitialized
 ===== unowned reference test =====
 /Users/choonsiong/Code/Swift/ARC/ARC/UnownedReference.swift: Andy Appleseed is being initialized
 /Users/choonsiong/Code/Swift/ARC/ARC/UnownedReference.swift: card 1234567888888888 is being initialized for customer Andy Appleseed
 /Users/choonsiong/Code/Swift/ARC/ARC/UnownedReference.swift: Andy Appleseed is being deinitialized
 /Users/choonsiong/Code/Swift/ARC/ARC/UnownedReference.swift: card 1234567888888888 is being deinitialized
 Program ended with exit code: 0
 
 */
