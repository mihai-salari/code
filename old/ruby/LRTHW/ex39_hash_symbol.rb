# Note that we use symbols here, and some codes below are not working because of this.
# Change the key to normal strings to get it works.

# mapping
states =  {
  Oregon: 'OR',
  Florida: 'FL',
  California: 'CA',
  NewYork: 'NY',
  Michigan: 'MI',
}

cities = {
  CA: 'San Francisco',
  MI: 'Detroit',
  FL: 'Jacksonville',
}

cities[:NY] = 'New York'
cities[:OR] = 'Portland'

puts '-' * 50

puts "Michigan's abbreviation is: #{states[:Michigan]}"
puts "Florida's abbreviation is: #{states[:Florida]}"

puts '-' * 50

puts "Michigan has: #{cities[states[:Michigan]]}"
puts "Michigan has: #{cities[:MI]}"

puts '-' * 50

states.each { |state, abbrev| puts "#{state} is #{abbrev}" }

puts '-' * 50

cities.each { |abbrev, city| puts "#{abbrev} is #{city}" }

puts '-' * 50

states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is #{abbrev} has city #{city}"
end

puts '-' * 50

state = states[:Texas]

if !state
  puts "Sorry, no Texas"
end

city = cities[:TX]
city ||= 'Does not exist'
puts "The city for the state 'TX' is: #{city}"