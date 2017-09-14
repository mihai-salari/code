# Call code in the block with yield

def do_three_times
  yield
  yield
  yield
end

do_three_times { puts "Hello, Ruby" }

# Block can take arguments

def do_six_times
  yield('first')
  yield('second')
  yield('third')
  yield('forth')
  yield('fifth')
  yield('sixth')
end

do_six_times {
  |n| puts "#{n}: Hello, Ruby"
}

# yield returns the result of executing the block

def number_names
  [yield('one'), yield('two'), yield('three')].join(', ')
end

puts number_names {
  |name| name.upcase.reverse
}