# parameters:
# values - an array of values
#
# usage:
# numbers = [1, 2, 3, 4, 5, 6, 7, 8]
# get_arithmetic_mean_from(numbers)

def get_arithmetic_mean_from(values)
  total = 0
  
  for value in values
    total += value
  end
  
  total/values.count.to_f
end

# p get_arithmetic_mean_from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])
# p get_arithmetic_mean_from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
# p get_arithmetic_mean_from([16.3, 22.4, 18.5, 18.7, 20.1])