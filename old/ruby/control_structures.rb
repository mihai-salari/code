today = Time.now

if today.sunday?
	puts "It is Sunday, have fun!"
elsif today.monday?
	puts "Let's work!"
else
	puts "More work!!!"
end

i = 0
j = 10

while i < 10 and i != j
	puts "i is #{i}, j is #{j}"
	i += 1
	j -= 1
end

puts "i is #{i}, j is #{j}"

# statement modifiers

age = 22
puts "Hello, young man!" if age > 21

square = 4
square = square * square while square < 1000

puts square