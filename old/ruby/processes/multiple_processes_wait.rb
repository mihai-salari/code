# Create 3 child processes
3.times do
  fork do
    # sleep for a random amount of number less than 5 sec
    puts "I am #{Process.pid}"
    sleep rand(5)
    puts "Good-bye\n"
  end
end

3.times do
  puts "#{Process.wait} is dead."
end