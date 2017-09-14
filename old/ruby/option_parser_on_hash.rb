#!/usr/bin/env ruby

# Bring OptionParser into the namespace
require 'optparse'

options = {}

users = ["lee","foo"]

servers = {
  ss01: '192.168.18.91',
  ss02: '192.168.18.92'
}

option_parser = OptionParser.new do |opts|
  # create a switch
  opts.on("-i","--iteration") do
    options[:iteration] = true
  end
  
  # Create a flag
  opts.on("--server SERVER", servers) do |server| # validate agains servers hash
    options[:server] = server
  end
  
  opts.on("-u USER", users) do |user| # validate against users array
    options[:user] = user
  end
  
  opts.on("-p PASSWORD") do |password|
    options[:password] = password
  end
end

option_parser.parse!
puts options.inspect