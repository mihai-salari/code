name = 'foo bar'
p name[0]
puts name[0]

p name[-1]
p name[-name.length]
p name[name.length] # returns nil
p name.length

name[0] = 's'
p name

# Comma-separated operands - first operand specifies an index (can be negative),
# and the second specifies a length (must be nonnegative). If the righthand side is
# the empty string, this is a deletion, and if the lefthand side has zero-length, this
# is an insertion.
name[0,4] = 'fuck '
p name

name[4,0] = ' and'
p name

name[0,5] = ''
p name

# With a Range object
name[0..2] = 'foo'
p name

name[0..name.length-1] = ''
p name

# Index a string with a string, useful when you want to replace the matched screen
# with some other string.
s = "hello"

p s["l"]
p s["f"]

while(s["l"])
  s["l"] = "Le"
end

p s

# Using regular expression
s = 'hello world'
p s

while(s[/[aeiou]/])
  puts "Found match: " + s[/[aeiou]/]
  s[/[aeiou]/] = '*'
end

p s 