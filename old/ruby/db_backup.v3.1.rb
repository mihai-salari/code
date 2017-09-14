#!/usr/bin/env ruby

# Bring OptionParser into the namespace
require 'optparse'

options = {}

option_parser = OptionParser.new do |opts|
  executable_name = File.basename($PROGRAM_NAME)
  opts.banner = "Backup one or more MySQL databases.
  
  Usage: #{executable_name} [options] database_name"
  
  # create a switch
  opts.on('-i','--iteration','Indicate that this backup is an "iteration" backup') do
    options[:iteration] = true
  end
  
  # Create a flag
  opts.on('-u USER','Database username, in first.last format', /^.+\..+$/) do |user|
    options[:user] = user
  end
  
  opts.on('-p PASSWORD','Database password') do |password|
    options[:password] = password
  end
end

option_parser.parse!

if ARGV.empty?
  puts "Error: you must supply a database name"
  puts
  puts option_parser.help
else
  database_name = ARGV[0]
end

puts options.inspect