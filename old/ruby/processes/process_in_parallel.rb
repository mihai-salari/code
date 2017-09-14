message = 'Hello, World'
recipient = 'foo@example.com'

fork do
  # Run any script to collect stats (for example) in parallel
  # Perhaps we can implement this to collect stats with multiple MySQL queries running at the same time?
end

# send message to recipient