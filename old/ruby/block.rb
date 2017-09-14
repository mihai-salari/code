sum = 0

[1, 2, 3, 4].each do |n|
  puts "n: #{n}"
  square = n * n
  puts "square: #{square}"
  sum += square
  puts "sum: #{sum}"
  puts "-------------------"
end

puts sum

# yield

def two_times
  yield
  yield
end

two_times { puts "Hello World!" }

# yield with parameter

def fib_up_to(max)
  i1, i2 = 1, 1 # parallel assignment
  
  while i1 <= max
    yield i1 # parameter pass to block
    i1, i2 = i2, i1 + i2
  end
end

fib_up_to(100) {|f| print f, " "} # two arguments to print...

puts

# each

[1, 3, 5, 7, 9].each {|i| puts i}

# find
puts([1, 3, 5, 7, 9, 11].find {|i| i*i > 30})

# collect / map

halc = ["H", "A", "L"].collect {|x| x.succ}
halm = ["H", "A", "L"].map {|x| x.succ}

p halc
p halm

# inject

puts([1, 3, 5, 7].inject(0) {|sum, element| sum+element})

puts([1, 3, 5, 7].inject(1) {|product, element| product*element})

puts([1, 3, 5, 7].inject(:+))
puts([1, 3, 5, 7].inject(:*))