the_count = [1, 2, 3, 4, 5]
fruits = ['apple', 'orange', 'pear', 'durian', 'mango', 'pineapple', 'banana']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# A more traditional style
for number in the_count
  puts "This is count #{number}"
end

# Preferred Ruby way
fruits.each do |fruit|
  puts "I love #{fruit}."
end

# or
change.each {
  |i| puts "I got #{i}!"
}

# Empty array
elements = []

(0..5).each do |i|
  puts "adding #{i} to elements array"
  elements.push(i)
end

elements.each do |element|
  puts "Element #{element}"
end