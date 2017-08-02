a = [1, 2, 3, 4, 5]

puts a[0]
puts a[-1]

# Ruby simply returns nil if index is invalid
p a[a.size]
p a[-a.size-1]