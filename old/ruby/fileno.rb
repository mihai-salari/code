passwd = File.open('/etc/passwd')
puts passwd.fileno # associated file descriptor number

hosts = File.open('/etc/hosts')
puts hosts.fileno

# Close the open passwd file, this frees up its file descriptor number
# to be used by the next opened resource
passwd.close

null = File.open('/dev/null')
puts null.fileno

puts STDIN.fileno
puts STDOUT.fileno
puts STDERR.fileno

# Maximum number of open file descriptors
p Process.getrlimit(:NOFILE) # Soft limit / hard limit
p Process::RLIM_INFINITY

# Maximum number of simultaneous processes allowed for the current user
p Process.getrlimit(:NPROC)

# The largest size file that may be created
p Process.getrlimit(:FSIZE)

# The maximum size of the stack segment of the process
p Process.getrlimit(:STACK)