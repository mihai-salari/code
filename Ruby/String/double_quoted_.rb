puts "\"Hello, World\""
puts "Hello,\n\tWorld"
puts "A single backslash \\"

puts "A single pound #" # no need to escape # here and below
puts "My phone number is #: 123-444-9999"

puts "A single pound with curly \#{" # need to escape # here, and also \#$ \#@

# String interpolation with #{}
puts "PI is #{Math::PI}"

# Double-quoted string literals may span multiple lines, and line terminators become
# part of the string literal, unless escaped with a backslash.

message = "This string literal
has two lines \
but is written on three"

puts message
p message

# You can explicitly encode the line terminators in your strings -- in order to
# enforce network CRLF line terminators, as used in the HTTP protocol, for example.

http_message = "This string has three lines.\r\n" \
"It is written as three adjacent literals\r\n" \
"separated by escaped newlines\r\n"

puts http_message
p http_message