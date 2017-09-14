def join_with_commas(*words)
  words.join(', ')
end

puts join_with_commas('a', 'b', 'c')

def join_with_commas(before, *words, after)
  before + words.join(', ') + after
end

puts join_with_commas('Testing: ', 'one', 'two', 'three', '.')

arguments = ['Testing: ', 'one', 'two', 'three', '.']

p arguments

puts join_with_commas(*arguments)

before, *words, after = ['Testing: ', 'one', 'two', 'three', '.']

p before
p words
p after

p arguments
puts arguments