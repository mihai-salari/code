# open file
f = File.open("/Users/choonsiong/Public/Ruby/regex.rb")

f.each do |line|
  puts "The line is: #{line}"
end

f.close

f = File.open("/Users/choonsiong/Public/Ruby/fileio.rb")

f.each.with_index do |line, index|
  puts "Line #{index}: #{line}"
end

f.close