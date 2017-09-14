require 'socket'

def handle_connection(s, c)
  print 'Connection class: '
  p c.class

  print 'Server fileno: '
  p s.fileno

  print 'Connection fileno: '
  p c.fileno

  print 'Local address: '
  p c.local_address

  print 'Remote address: '
  p c.remote_address
end
  

# Create the server server
server = Socket.new(:INET, :STREAM)
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')
server.bind(addr)
server.listen(Socket::SOMAXCONN)

loop do
  connection, _ = server.accept
  # handle connection
  handle_connection(server, connection)
  connection.close
end
