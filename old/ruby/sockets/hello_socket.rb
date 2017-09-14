require 'socket'

# Creates a socket of type STREAM in the INET domain.
# STREAM = TCP stream
# DGRAM = UDP datagram
# INET = IPV4 family of protocols
socket1 = Socket.new(Socket::AF_INET, Socket::SOCK_STREAM)

# Another example in the IPv6 domain
socket2 = Socket.new(:INET6, :STREAM)