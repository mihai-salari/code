import Foundation

class CheckingAccount: BasicAccount {
    private let accountNumber = UUID().uuidString
    
    class Check {
        let account: String
        var amount: Dollars
        private(set) var cashed = false
        
        func cash() {
            cashed = true
        }
        
        fileprivate init(amount: Dollars, from account: CheckingAccount) {
            self.amount = amount
            self.account = account.accountNumber
        }
    }
    
    func writeCheck(amount: Dollars) -> Check? {
        // Check for sufficient balance before withdrawing the amount
        // and creating the check
        guard balance > amount else {
            return nil
        }
        
        let check = Check(amount: amount, from: self)
        self.withdraw(amount: check.amount)
        
        return check
    }
    
    func deposit(_ check: Check) {
        // Will not deposit the check if it has already been cashed!
        guard !check.cashed else {
            return
        }
        
        self.deposit(amount: check.amount)
        check.cash()
    }
}
