def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

p Integer.all.first(20)

p Integer.all.select {|i| (i % 3).zero?}.first(8)

def palindrome?(n)
  n = n.to_s
  n == n.reverse
end

p Integer.all.select {|i| (i % 3).zero?}.select {|i| palindrome?(i)}.first(18)

multiple_of_three = Integer
                      .all
                      .select {|i| (i % 3).zero?}

m3_palindrome = multiple_of_three.select {|i| palindrome?(i)}                      
                      
p multiple_of_three.first(10)
p m3_palindrome.first(10)