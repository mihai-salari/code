# The median is the value that comes in the middle
# when you put the values in order from smallest to largest.
# 
# If the number of values is even, the average of the two values
# in the middle is the median.
#
# Parameters:
# values - an array of values
#
# Usage:
# numbers = [16.3, 22.4, 18.5, 18.7, 20.1]
# get_median_from(numbers)

def get_median_from(values)
  new_array = values.sort
  
  median = 0
    
  if (values.count % 2) == 0
    # even case, find out the two middle values, then take the average
    middle_1 = ((values.count) / 2) - 1 # array start at 0
    middle_2 = middle_1 + 1
    median = (new_array[middle_1] + new_array[middle_2]) / 2.0
  else
    # odd case, find the middle value only
    middle = ((values.count) / 2).floor
    median = new_array[middle]
  end

  median
end

# p get_median_from([38, 73, 86, 90, 111, 124])
# p get_median_from([71, 84, 85, 89, 90, 103])
# p get_median_from([59, 70, 77, 88, 95, 229])
# p get_median_from([16.3, 22.4, 18.5, 18.7, 20.1])