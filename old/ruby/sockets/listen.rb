require 'socket'

# First, create a new TCP socket
socket = Socket.new(:INET, :STREAM)

# Create a C struct to hold the address for listening
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')

# Bind to it
socket.bind(addr)

# Tell it to listen for incoming connections
socket.listen(5)

puts socket
puts Socket::SOMAXCONN