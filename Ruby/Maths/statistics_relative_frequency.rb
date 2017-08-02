# Calculate the relative frequency of a given frequency.

def get_relative_frequency(frequency, sum_of_frequency)
  frequency / sum_of_frequency.to_f
end

# Relative frequency of 2 with total of 10
# p get_relative_frequency(2, 10)