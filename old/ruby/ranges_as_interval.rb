puts (1..10) === 5
puts (1..10) === 55
puts (1..10) === 1.234
puts (1..10) === 'a'
puts ('a'...'z') === 'z'
puts ('a'...'z') === 'a'
puts ('a'...'z') === 'A'

age = 47

case age
when 0...10
  puts "Mmm... new human smell"
when 10...20
  puts "Nice and fresh"
when 20...30
  puts "Sex never stop"
when 30...40
  puts "Reliable but also unreliable"
when 40...50
  puts "What the f?"
else
  puts "Vintage sperm"
end