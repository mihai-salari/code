# _*_ coding: utf-8 _*_

message = "Hello, World"

if message.ascii_only?
  puts "The string '#{message}' contains ASCII only with encoding #{message.encoding}"
else
  puts "The string '#{message}' contains multibyte characters with encoding #{message.encoding}."
end

puts "The string '#{message}' contains #{message.length} characters."
puts "The string '#{message}' contains #{message.size} characters."
puts "The string '#{message}' contains #{message.bytesize} bytes."

puts "---------------------------------"

message = "2x2=4 😇"

if message.ascii_only?
  puts "The string '#{message}' contains ASCII only with encoding #{message.encoding}."
else
  puts "The string '#{message}' contains multibyte characters with encoding #{message.encoding}."
end

puts "The string '#{message}' contains #{message.length} characters."
puts "The string '#{message}' contains #{message.size} characters."
puts "The string '#{message}' contains #{message.bytesize} bytes."
