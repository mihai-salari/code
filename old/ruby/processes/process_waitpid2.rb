favorite = fork do
  exit 77
end

puts favorite

middle_child = fork do
  abort "I want to be waited on!"
end

puts middle_child

pid, status = Process.waitpid2 middle_child
puts status.exitstatus