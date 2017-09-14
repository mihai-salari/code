ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts "Wait... there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
p stuff

more_stuff = ["Car", "Money", "Song", "Movie", "Gym", "Woman", "Sex", "Banana", "Gold", "Vacation"]
p more_stuff

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding #{next_one} to stuff array"
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"
puts "Come again: ", stuff

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff[-1]
puts stuff.join(' and ')
puts stuff[3..5].join("$$$$$$$$")