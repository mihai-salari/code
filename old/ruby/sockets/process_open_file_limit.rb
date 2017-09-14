require 'socket'

# Create the server server
server = Socket.new(:INET, :STREAM)
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')
server.bind(addr)
server.listen(Socket::SOMAXCONN)
connection, _ = server.accept # test with: 16:12:44 ~ echo ohai | nc localhost 4481

print 'Connection class: '
p connection.class

print 'Server fileno: '
p server.fileno

print 'Connection fileno: '
p connection.fileno

print 'Local address: '
p connection.local_address

print 'Remote address: '
p connection.remote_address

print 'Number of open files allowed for current process: '
p Process.getrlimit(:NOFILE)