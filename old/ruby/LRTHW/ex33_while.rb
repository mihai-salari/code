i = 0
numbers = []

while i < 6
  puts "At the top i = #{i}"
  numbers << i
  i += 1
  puts "Numbers: ", numbers
  puts "At the bottom i = #{i}"
end

puts "The numbers:"
numbers.each { |num| puts num }