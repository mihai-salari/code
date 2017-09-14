class Account
	attr_reader :cleared_balance
	attr_accessor :balance

	protected :cleared_balance

	def initialize(balance)
		@balance = balance
		@cleared_balance = balance
	end

	def greater_balance_than?(other)
		@cleared_balance > other.cleared_balance
	end
end

class Transaction
	def initialize(account_a, account_b)
		@account_a = account_a
		@account_b = account_b
	end

	private

	def debit(account, amount)
		account.balance -= amount
	end

	def credit(account, amount)
		account.balance += amount
	end

	public

	def transfer(amount)
		debit(@account_a, amount)
		credit(@account_b, amount)
	end
end

saving = Account.new(100)
puts(saving.balance)

checking = Account.new(200)
puts(checking.balance)

t = Transaction.new(checking, saving)
t.transfer(100)

puts("Saving: $#{saving.balance}")
puts("Checking: $#{checking.balance}")

puts(saving.greater_balance_than?(checking))