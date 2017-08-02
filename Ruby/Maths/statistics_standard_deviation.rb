# Standard Deviation is an indicator to show the difference from the mean
# of each value in that set.
#
# The minimum SD is zero, and as the 'scattering of data' increases,
# so does the SD.
#
# Standard Deviation calculate with the square root of
# sum of (each value - mean) to the power of 2
# divide by number of values
#
# Parameters:
# values - an array of values
#
# Usage:
# numbers = [38, 73, 86, 90, 111, 124]
# get_standard_deviation_from(numbers)

require_relative 'statistics_arithmetic_mean'

# Use when calculating the SD of an entire statistical population
def get_standard_deviation_from(values)
  total = 0
  
  mean = get_arithmetic_mean_from(values)
  
  for value in values
    total += ((value - mean)**2)
  end
  
  Math.sqrt(total/values.count) # return this expression
end

# Use when calculating the SD of a sample (used more frequently)
def get_standard_deviation_sample_from(values)
  total = 0
  
  mean = get_arithmetic_mean_from(values)
  
  for value in values
    total += ((value - mean)**2)
  end
  
  Math.sqrt(total/(values.count-1))  
end

# p get_standard_deviation_from([38, 73, 86, 90, 111, 124])
# p get_standard_deviation_sample_from([38, 73, 86, 90, 111, 124])