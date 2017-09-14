p (1..10).count { |number| number.even? }
p (1..10).select { |number| number.even? }
p (1..10).any? { |number| number < 8 }
p (1..10).all? { |number| number < 8 }

(1..5).each do |number|
  if number.even?
    puts "#{number} is even"
  else
    puts "#{number} is odd"
  end
end

p (1..10).map { |number| number * 3 }

# &:message is a shorthand for { |object| object.message }
p (1..10).select(&:even?)

p ['one', 'two', 'three'].map(&:upcase)

# flat_map
p ['one', 'two', 'three'].map(&:chars)
p ['one', 'two', 'three'].flat_map(&:chars)

# inject
p (1..10).inject(0) { |result, number| result + number }
p (1..10).inject(1) { |result, number| result * number }
p ['one', 'two', 'three'].inject('Words:') { |result, word| "#{result} #{word}"}