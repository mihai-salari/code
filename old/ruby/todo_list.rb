#!/usr/bin/env ruby

File.open('todo.txt', 'r') do |file|
  counter = 1
  
  file.readlines.each do |line|
    name,created,completed = line.chomp.split(/,/)
    printf("%3d - %s\n", counter, name)
    printf("\t%10s %s\n", "Created:", created)
    
    unless completed.nil?
      printf("\t%10s %s\n", "Completed:", completed)
    end
    
    counter += 1
  end
end