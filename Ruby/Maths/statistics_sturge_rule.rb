# Use Sturges' Rule to calculate the size of class range to construst
# the classes in a table.

def get_sturge_value(number_of_values)
  1 + (Math.log10(number_of_values)/Math.log10(2))
end

def get_range_of_class(max_value, min_value, sturge_value)
  (max_value - min_value) / sturge_value
end

# p get_sturge_value(50)
# p get_range_of_class(980, 500, get_sturge_value(50))

# Therefore, the range of class can be 500-572, 572-644, ...
