a1 = (1..10).to_a
print a1, "\n"

print (1...10).to_a, "\n"

puts 0..."cat".length

letters = ('a'..'z').to_enum
print letters.next
print letters.next
print letters.next
print letters.next
print letters.next
print "\n"

digits = 0..9
puts digits.include?(9)
puts digits.max
print digits.reject { |i| i < 8 }
print "\n"
puts digits.inject(:+)