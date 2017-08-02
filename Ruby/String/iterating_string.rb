hello = 'hello, world!'

hello.each_char { |c| print "'#{c}' " }

puts ""

hello.each_char do |c|
  if c == ' '
    print '\'* \' '
  else
    print "'#{c}' "
  end
end

puts ""

# Below subscript access is less efficient compare to above
0.upto(hello.size-1) do |i|
  print "'#{hello[i]}' "
end

puts ""

# each_byte
hello.each_byte { |b| print "#{b} " }

puts ""

# each_line
messages = <<EOF
hello,
world.
EOF

puts messages

messages.each_line { |l| puts l }