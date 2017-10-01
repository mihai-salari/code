import Cocoa

// In playground, all files under 'Sources' directory is treated as a single different module

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
