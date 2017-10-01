import Cocoa

// Using extension for access control

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

let saving = SavingsAccount(interestRate: 0.28)
saving.deposit(amount: 10)
print(saving.balance)
saving.deposit(amount: 10)
print(saving.balance)

class TestAccount: BasicAccount {
    // This class located in a different module, since we are 'subclassing'
    // BasicAccount, it is a potential to override our Super Class ability, therefore
    // BasicAccount has to be marked as 'open'
}

print(fooCheckingAccount)
print(marryCheckingAccount)
