input_file = ARGV.first
f = open(input_file)

count = 1
continue = true

while continue
  msg = f.gets.chomp

  # if msg.empty?
  #   continue = false
  #   break
  # end

  puts "#{count}: #{msg}"
  count += 1
end

# This is bad idea, because everytime we run gets, it will get next line
# while f.gets.chomp
#   puts "#{f.gets.chomp}"
# end