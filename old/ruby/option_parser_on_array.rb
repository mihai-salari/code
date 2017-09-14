#!/usr/bin/env ruby

# Bring OptionParser into the namespace
require 'optparse'

options = {}

users = ["lee","foo"]

option_parser = OptionParser.new do |opts|
  # create a switch
  opts.on("-i","--iteration") do
    options[:iteration] = true
  end
  
  # Create a flag
  opts.on("-u USER", users) do |user| # validate against users array
    options[:user] = user
  end
  
  opts.on("-p PASSWORD") do |password|
    options[:password] = password
  end
end

option_parser.parse!
puts options.inspect