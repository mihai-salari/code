def call_block
	puts "Start of method"
	yield
	yield
	puts "End of method"
end

call_block { puts "In the block" }

def who_says_what
	yield("Amy", "hello")
	yield("Robert", "goodbye")
end

who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

# Examples of Ruby iterators

animals = %w(cat dog cow horse)
animals.each {|animal| puts animal}

5.times { print "*" }

3.upto(10) {|i| puts i * i}

('a'...'e').each { |char| print char }

puts ""

('a'..'e').each { |char| print char }

puts ""