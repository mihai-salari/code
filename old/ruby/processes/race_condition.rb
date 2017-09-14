2.times do
  fork do
    puts "I'm #{Process.pid}"
    abort "Fuck off!"
  end
end

puts Process.wait
sleep 3

puts Process.wait