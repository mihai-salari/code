first = ARGV

print "Give me your second argument: "

#second = gets.chomp <-- this has problem with ARGV
second = $stdin.gets.chomp

puts "Your first: #{first}, second: #{second}"