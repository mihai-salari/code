class BookInStock
	attr_reader :isbn
	attr_accessor :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	def to_s
		"ISBN: #{@isbn}, price: #{@price}"
	end

	def price_in_cents
		Integer(@price*100 + 0.5)
	end

	def price_in_cents=(cents)
		@price = cents / 100.0
	end
end

b1 = BookInStock.new("isbn1", 3.50)
p b1

b2 = BookInStock.new("isbn2", 10)
p b2

b3 = BookInStock.new("isbn3", 4.4)
p b3

puts b1
puts b2
puts b3

puts "#{b1.isbn}: $#{b1.price}"

b2.price = b2.price * 0.75

puts "#{b2.isbn}: $#{b2.price}, #{b2.price_in_cents} cents"

b3.price_in_cents = 1000

puts "#{b3.isbn}, $#{b3.price}"