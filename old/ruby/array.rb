a = [1, 'apple', 3.14]

puts "The second element is #{a[1]}."
puts a.inspect

a = %w{black white grey}

puts a.inspect

p a.class
p a.length

b = Array.new
b[0] = "hello"
b[1] = "world"

p b
p b.class

b[10] = "abc"
p b