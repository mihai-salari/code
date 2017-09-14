num = 10001
4.times do
  puts "#{num.class}: #{num}"
  num *= num
end

# Rational Numbers

answer = Rational(3, 4) * Rational(2, 3)
puts answer
answer = Rational("3/4") * Rational("2/3")
puts answer

# Complex Numbers

puts Complex(1, 2) * Complex(3, 4)
puts Complex("1+2i") * Complex("3+4i")

# Processing numbers from a file

f = File.open("/Users/choonsiong/Public/Ruby/tmp/numbers.txt")
f.each do |line|
  #puts line
  v1, v2 = line.split
  print v1 + v2, " " # These are String, not Number...
end

f.close

print("\n")

f = File.open("/Users/choonsiong/Public/Ruby/tmp/numbers.txt")
f.each do |line|
  #puts line
  v1, v2 = line.split
  print Integer(v1) + Integer(v2), " "
end

f.close

print("\n")

# Loops

3.times { print "X " }
1.upto(5) { |i| print i, " " }
99.downto(95) { |i| print i, " " }
50.step(500, 5) { |i| print i, " " }

puts 10.downto(1)
10.downto(1).with_index { |num, index| puts "#{index}: #{num}" }