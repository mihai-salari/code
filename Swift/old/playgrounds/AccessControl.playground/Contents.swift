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
    private(set) var balance: Dollars = 0.0
    
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
//account.balance = 1_000_000_000_000.0 // This will not work with access control defined
print(account.balance)

class CheckingAccount: BasicAccount {
    private let accountNumber = UUID().uuidString
    
    class Check {
        let account: String
        var amount: Dollars
        
        private(set) var cashed = false
        
        func cash() {
            cashed = true
        }
        
        init(amount: Dollars, from account: CheckingAccount) {
            self.amount = amount
            self.account = account.accountNumber
        }
    }
    
    func writeCheck(amount: Dollars) -> Check? {
        guard balance > amount else {
            return nil
        }
        
        let check = Check(amount: amount, from: self)
        withdraw(amount: check.amount)
        
        return check
    }
    
    func deposit(check: Check) {
        guard !check.cashed else {
            return
        }
        
        deposit(amount: check.amount)
        check.cash()
    }
}

// Create a checking account for John
let johnChecking = CheckingAccount()
johnChecking.deposit(amount: 300.00)

// Write a check for $200
let check = johnChecking.writeCheck(amount: 200.00)!

// Create a checking account for Jane, and deposit the check
let janeChecking = CheckingAccount()
janeChecking.deposit(check: check)
janeChecking.balance

janeChecking.deposit(check: check)
janeChecking.balance

check.account
