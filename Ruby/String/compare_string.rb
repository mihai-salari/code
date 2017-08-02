puts 'Z' > 'a' # ASCII Z has lower code than a
puts "Z".casecmp("a") # Case-insensitive compare

puts 'Z'.downcase > 'a'
puts 'Z'.downcase > 'a'.upcase