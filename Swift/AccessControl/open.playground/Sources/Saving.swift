import Foundation

public class SavingsAccount: BasicAccount {
    var interestRate: Double
    
    public init(interestRate: Double) {
        self.interestRate = interestRate
    }
    
    public func processInterest() {
        let interest = self.balance * interestRate
        self.deposit(amount: interest)
    }
}
