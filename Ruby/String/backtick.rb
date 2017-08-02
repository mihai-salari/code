=begin

When text is enclosed in backquotes, that text is treated as a double-quoted string literal.
The value of that literal is passed to the specially named Kernel.` method. This method
executes the text as an operating system shell command and returns the command's output as
string.

=end

puts `date`

puts `ls`

# Using %x, note that the delimeter used here is same like %Q syntax

puts %x(pwd)
puts %x[pwd]
puts %x|pwd|
puts %x{pwd}

# Note that the text within the backticks, or following by %x is processed
# like a double-quoted literal, which means that arbitrary Ruby expressions can
# be interpolated into the string.

system = `uname`

if system =~ /[dD]arwin/
  listcmd = 'ls'
else
  listcmd = 'dir'
end

puts `#{listcmd}`