require 'socket'

server = TCPServer.new(4481)

# For both ipv4 and ipv6
#server2 = Socket.tcp_server_sockets(4482)

Socket.accept_loop(server) do |connection|
  # handle connection
  # p connection.local_address
  # p connection.remote_address
  connection.close
end