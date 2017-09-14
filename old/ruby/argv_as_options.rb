p ARGV

# did the user request help?
if ARGV.include?('--help')
  puts "--help what?"
end

# get the value of -c option
if ARGV.include?('-c') && ARGV[ARGV.index('-c') + 1] 
  puts ARGV[ARGV.index('-c') + 1]
end