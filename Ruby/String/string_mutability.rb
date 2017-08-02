=begin

Strings are mutable in Ruby. Therefore, the Ruby interpreter cannot use the
same object to represent two identical string literals.

Each time Ruby encounters a string literal, it creates a new object.

=end

10.times { puts "test".object_id }

# For efficiency, you should avoid using literals within loops.