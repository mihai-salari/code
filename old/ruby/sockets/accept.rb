require 'socket'

# Create the server socket
socket = Socket.new(:INET, :STREAM)
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')
socket.bind(addr)

# Tell it to listen for incoming connections (with max listen queues)
socket.listen(Socket::SOMAXCONN)

# Accept a connection
connection, addrinfo = socket.accept # test with: 16:12:44 ~ echo ohai | nc localhost 4481

puts "Result of #{connection}:"
puts "\t=> Connection is from #{addrinfo.ip_address}:#{addrinfo.ip_port}"