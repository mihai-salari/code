puts 'Hello World'
puts 'I\'m Foo'
puts 'A backslash \\, more backslashes \\\\'

puts 'a\b' # we don't need to escape \ here, unless it is follow by ' or \
puts 'a\b' == 'a\\b'

# Single-quoted strings may extend over multiple lines, and the resulting string literal
# includes the newline characters. It is not possible to escape the newlines with 
# a backslash.

puts 'hello world
and another beautiful world'
puts 'hello world \
and another beautiful world' # newline character is included here, cannot be escape with a \

# If you want to break a long single-quoted string literal across multiple lines without
# embedding newlines in it, simply break it into multiple adjacent string literals; the Ruby
# interpreter will concatenate them during the parsing process.

# You must escape the newlines between the literals so that Ruby does not interpret
# the newline as a statement terminator.

message = 'hello world' \
' and' \
' another beautiful world.'

puts message