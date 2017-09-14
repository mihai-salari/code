filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'r+') # read-write, starts at the beginning of file

puts "Before truncating, the content of the file is:"
print target.read

# Below truncate is not required if the IO open mode is 'w'
puts "Truncating the file. Goodbye!"
target.truncate(0)

# Below is pointless... as it won't show anything because the file is 0 size now
puts "After truncating, the content of the file is:"
print target.read

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

formatter = "%{first}\n%{second}\n%{third}\n"
output = formatter % {first: line1, second: line2, third: line3}

target.write(output)

puts "After writing, the content of the file is:"
target.seek(0) # move to start of the file
print target.read

puts "And finally, we close it."
target.close