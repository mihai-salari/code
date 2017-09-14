puts "Today is #{
  def printMessage
    "Hello, World!"
  end
  printMessage()
} Let's rock and roll!"

puts "hello, world"
puts %q/hello, world/
puts %q{hello, world}
puts %Q[hello, world]
puts %Q<hello, world>
puts %Q(hello, world)

# Using here document
message = <<EOL
  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
  Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum.
  Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.
EOL

print(message)
puts message

# white space is preserved
code = <<EOL
  def printGreeting
    puts "Hello World!"
  end
EOL

puts code

# encoding
name = "foo bar"
puts RUBY_VERSION
puts "Encoding of #{name.inspect} is #{name.encoding}."