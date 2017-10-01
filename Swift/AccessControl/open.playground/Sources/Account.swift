import Foundation

protocol Account {
    associatedtype Currency
    
    // read-only property
    var balance: Currency { get }
    
    func deposit(amount: Currency)
    func withdraw(amount: Currency)
}

public typealias Dollars = Double

open class BasicAccount: Account {
    public var balance: Dollars = 0.0
    
    public init() { }
    
    public func deposit(amount: Double) {
        self.balance += amount
    }
    
    public func withdraw(amount: Double) {
        if amount <= balance {
            balance -= amount
        } else {
            balance = 0
        }
    }
}
