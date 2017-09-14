ENV['MESSAGE'] = 'hello world'

system "echo $MESSAGE"
system "date '+%Y/%m/%d %H:%M:%S'"

puts ENV['PATH']
puts ENV.has_key?('EDITOR')