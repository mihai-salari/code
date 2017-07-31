import Foundation

class Customer {
    let name: String
    var card: CreditCard?
    
    init(name: String) {
        self.name = name
        print("\(#file): \(name) is being initialized")
    }
    
    deinit {
        print("\(#file): \(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
        
        print("\(#file): card \(number) is being initialized for customer \(customer.name)")
    }
    
    deinit {
        print("\(#file): card \(number) is being deinitialized")
    }
}
