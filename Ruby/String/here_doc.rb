# Here documents begin with << or <<-, there are followed immediately by an identifier
# or string that specifies the ending delimeter. The text of the string literal begins
# on the next line and continues until the text of the delimeter appears on a line by itself.

document = <<EOF
Hello,
  World.
EOF

puts document

# After reading the content of a here document, the Ruby interpreter goes back to the
# line it was on and continues parsing it.

# Example of multiple here documents in a line with above effect.
greeting = <<FIRST + <<SECOND + "!"
  Hello,
FIRST
    World!
SECOND

puts greeting

# If the here document begins with <<, then the delimeter must start at the beginning of
# the line. If the literal begins with <<- instead, then the delimeter may have whitespace
# in front of it.

message1 = <<EOF
  Hello, World
EOF

puts message1

message2 = <<-EOF
  Hello, World
  EOF
  
puts message2

# The newline at the beginning of a here document is not part of the literal, but the
# newline at the end of the document is.

# An empty here document, same as ""
empty_here = <<END
END

puts empty_here # note the newline at the end of the document here, hence an empty line display

puts "test test test"

# If you use an unquoted identifier as the terminator, then the here document behaves like
# a double-quoted string for the purposes of interpreting backslash escapes and the # character.

# If you want to be very, very literal, allowing no escape characters whatsoever, place the
# delimeter in single quotes.

single_quote = <<'THIS IS THE END, MY ONLY FRIEND, THE END'
  Elit Venenatis Nibh Mollis Sem
  Integer posuere erat a ante venenatis dapibus posuere velit aliquet.
  Ridiculus Risus Justo Elit Mattis
  
  We can use '' and \ and \ like this, no need to escape them!
THIS IS THE END, MY ONLY FRIEND, THE END

# Double-quoted string literal as the delimeter for here document is same as using
# a single identifier, except that it allows spaces within the delimeter.

title="HTML Example"
body="Hello, World!"

double_quote = <<-"# # #"
<html>
  <head><title>#{title}</title></head>
  <body>#{body}</body>
</html>
# # #

puts single_quote
puts double_quote

# Note that there is no way to include a comment within a here document except on the first line
# after the << token and before the start of the literal.