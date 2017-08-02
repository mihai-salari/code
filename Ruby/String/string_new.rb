# Returns a newly created string with no characters.
puts String.new

a = String.new
p a.object_id
a = "Hello"
p a.object_id # different object!

# Returns a new String object that represents the same
# text as the argument object.

puts String.new('hello')