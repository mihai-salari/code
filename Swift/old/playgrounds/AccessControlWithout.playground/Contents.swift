//: Playground - noun: a place where people can play

import Cocoa

/// A protocol describing core functionality for an account
protocol Account {
    associatedtype Currency
    
    var balance: Currency { get }
    
    func deposit(amount: Currency)
    func withdraw(amount: Currency)
}

typealias Dollars = Double

/// A U.S. Dollar based "basic" account
class BasicAccount: Account {
    var balance: Dollars = 0.0
    
    func deposit(amount: Dollars) {
        balance += amount
    }
    
    func withdraw(amount: Dollars) {
        if amount > balance {
            balance -= amount
        } else {
            balance = 0
        }
    }
}

// Create a new account
let account = BasicAccount()
print(account.balance)

// Deposit and withdraw some money
account.deposit(amount: 100.0)
print(account.balance)

account.withdraw(amount: 150.0)
print(account.balance)

account.deposit(amount: 5000.0)
print(account.balance)

account.withdraw(amount: 100.0)
print(account.balance)

// ... or do evil things!
account.balance = 1_000_000_000_000.0
print(account.balance) // Without proper access control!