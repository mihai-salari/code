puts "Parent process pid is #{Process.pid}"

if fork
  puts "Entered the if block from #{Process.pid}"
  puts "Parent process pid is #{Process.ppid}"
else
  puts "Entered the else block from #{Process.pid}"
  puts "Parent process pid is #{Process.ppid}"
end

puts "==========="

fork do
  puts "In child process #{Process.pid}"
  puts "Parent process pid is #{Process.ppid}"
end

puts "------------"
puts "In parent process #{Process.pid}"
puts "Parent process pid is #{Process.ppid}"
  