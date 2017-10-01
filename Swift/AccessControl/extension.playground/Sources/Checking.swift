import Foundation

public class CheckingAccount: BasicAccount {
    private let accountNumber = UUID().uuidString
    private var issuedChecks: [Int] = []
    private var currentCheck = 1
    
    public class Check {
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
    
    public func writeCheck(amount: Dollars) -> Check? {
        // Check for sufficient balance before withdrawing the amount
        // and creating the check
        guard balance > amount else {
            return nil
        }
        
        let check = Check(amount: amount, from: self)
        self.withdraw(amount: check.amount)
        
        return check
    }
    
    public func deposit(_ check: Check) {
        // Will not deposit the check if it has already been cashed!
        guard !check.cashed else {
            return
        }
        
        self.deposit(amount: check.amount)
        check.cash()
    }
}

// When access modifiers are applied to extensions, all members of the
// extension receive that access level
private extension CheckingAccount {
    func inspectForFraud(with checkNumber: Int) -> Bool {
        return issuedChecks.contains(checkNumber)
    }
    
    func nextNumber() -> Int {
        let next = currentCheck
        currentCheck += 1
        return next
    }
}

// Organize extension according to protocol conformance
extension CheckingAccount: CustomStringConvertible {
    public var description: String {
        return "Checking Balance: $\(balance)"
    }
}
