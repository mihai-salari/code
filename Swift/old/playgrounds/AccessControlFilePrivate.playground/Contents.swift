//: Playground - noun: a place where people can play

import Cocoa

//// Create a new account
//let account = BasicAccount()
//print(account.balance)
//
//// Deposit and withdraw some money
//account.deposit(amount: 100.0)
//print(account.balance)
//
//account.withdraw(amount: 150.0)
//print(account.balance)
//
//account.deposit(amount: 5000.0)
//print(account.balance)
//
//account.withdraw(amount: 100.0)
//print(account.balance)
//
//// ... or do evil things!
////account.balance = 1_000_000_000_000.0 // This will not work with access control defined
//print(account.balance)
//
// Create a checking account for John
let johnChecking = CheckingAccount()
johnChecking.deposit(amount: 300.00)
print(johnChecking.balance)

// Write a check for $200
let check = johnChecking.writeCheck(amount: 200.00)!

// Create a checking account for Jane, and deposit the check
let janeChecking = CheckingAccount()
janeChecking.deposit(check: check)
print(janeChecking.balance)

janeChecking.deposit(check: check)
print(janeChecking.balance)

class SavingsAccount: BasicAccount {
    var interestRate: Double
    
    init(interestRate: Double) {
        self.interestRate = interestRate
    }
    
    func processInterest() {
        let interest = balance * interestRate
        deposit(amount: interest)
    }
}

print(johnChecking)
print(janeChecking)