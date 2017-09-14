insanity = 0

while true  
  print "Enter a number or q to quit: "
  input = $stdin.gets.chomp
  
  if input == "quit" || input == "q"
    puts "Goodbye!"
    exit(0)
  end
  
  if input =~ /^[[:digit:]]+$/
    insanity = 0
    number = input.to_i
    
    if number == 0
      puts "Zero is good, zero is good..."
    elsif number < 10
      puts "Number is less than 10!"
    elsif number < 100
      puts "Number is less than 100!"
    else
      puts "Number is big!"
    end
  else
    if insanity < 3
      puts "I need a number."
      insanity += 1
    elsif insanity < 5
      puts "I need a number... please..."
      insanity += 1
    elsif insanity < 10
      puts "I need a fucking number!"
      insanity += 1
    else
      count = 0
      while count < insanity
        puts "Fuck you, give me the damn fucking number or fuck off!!!"
        count += 1
      end
      
      insanity += 1
    end
  end    
end