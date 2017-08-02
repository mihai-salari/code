first_name = "Bar"
last_name = "Foo"
full_name = first_name + " " + last_name
puts full_name

# Note the + operator does not convert its righthand operand to a string
age = 20
puts "He is " + age.to_s + " years old."
puts "He is #{age} years old."

# The << operator alters the lefthand operand
name = "Foo"
puts name
name << " " << "Bar"
puts name

# If the righthand operand is an integer, it is taken to be a character code, and
# the corresponding character is appended.
alphabet = "A"
puts alphabet
puts alphabet << ?B
puts alphabet << 67
puts alphabet << 256

# Multiplying
puts '*'*10

a = 0
puts "#{a=a+1}"*3 # Only evaluate once!