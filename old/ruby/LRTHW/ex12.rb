print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me one more number: "
one_more = gets.chomp.to_f

puts "One more number is #{one_more}."

print "Give me some money: "
some_money = gets.chomp.to_f

refund = some_money * 0.1

puts "Take your shitty money here $#{refund}!"