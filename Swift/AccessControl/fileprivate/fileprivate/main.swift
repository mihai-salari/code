import Foundation

let account = BasicAccount()
print(account.balance)

// Test checking account
let fooCheckingAccount = CheckingAccount()
fooCheckingAccount.deposit(amount: 500.00)
print(fooCheckingAccount.balance)

let fooCheck = fooCheckingAccount.writeCheck(amount: 100.00)!
print(fooCheckingAccount.balance)

let marryCheckingAccount = CheckingAccount()
print(marryCheckingAccount.balance)

marryCheckingAccount.deposit(fooCheck)
print(marryCheckingAccount.balance)

marryCheckingAccount.deposit(fooCheck) // Let's cheat the bank and see ;)
print(marryCheckingAccount.balance)

// A malicious user / stupid coder can create a check directly (we will solve this ;p)
// Following code won't work anymore
print(fooCheckingAccount.balance)
let illegalCheck = CheckingAccount.Check(amount: 1000.00, from: fooCheckingAccount)
print(fooCheckingAccount.balance)

let illegalCheckAccount = CheckingAccount()
illegalCheckAccount.deposit(illegalCheck)
print(fooCheckingAccount.balance)
print(illegalCheckAccount.balance)
