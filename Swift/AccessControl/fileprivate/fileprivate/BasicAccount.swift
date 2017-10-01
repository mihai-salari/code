import Foundation

protocol Account {
    associatedtype Currency
    
    // read-only property
    var balance: Currency { get }
    
    func deposit(amount: Currency)
    func withdraw(amount: Currency)
}

typealias Dollars = Double

class BasicAccount: Account {
    // still visible, but not able to set externally
    private(set) var balance: Dollars = 0.0
    
    func deposit(amount: Double) {
        self.balance += amount
    }
    
    func withdraw(amount: Double) {
        if amount <= balance {
            balance -= amount
        } else {
            balance = 0
        }
    }
}
