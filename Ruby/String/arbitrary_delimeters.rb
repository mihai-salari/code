# %q - follows single-quoted string rules

puts %q(Don't worry about escaping ' characters!)
puts %q|Don't worry about escaping ' characters!|
puts %q$Don't worry about escaping ' characters!$
puts %q[Don't worry about escaping ' characters!]

# %Q - follows double-quoted string rules

puts %Q(Don't worry about escaping " and " and " and " characters!)
puts %Q|Don't worry about escaping " and " and " and " characters!|
puts %Q$Don't worry about escaping " and " and " and " characters!$
puts %Q[Don't worry about escaping " and " and " and " characters!]

# % - follows double-quoted string rules

puts %-Don't worry about escaping " and ' characters!-


# If you use paired delimeters, you don't need to escape those delimeters in your
# literals, as long as they appear in properly nested pairs.

# e.g. XML uses paired angle brackets
puts %<<book><title>Hello, World</title></book>>

# e.g. Expressions use paired, nested parens
puts %((1+(2*3)) = #{(1+(2*3))})

# a mismatched paren must be escaped
puts %(a mismatched paren \( must be escaped)