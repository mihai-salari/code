# Standard score (normalization) - the number of standard deviations a value is above or below the mean.
# For example, a standard score of 1 means that it is 1 standard deviation above the average.
# 
# Characteristics of Standard Score:
# - No matter what the maximum value of your variable is, the arithmetic mean of the standard score
# is always 0, and the standard deviation is always 1.
# - Whatever the unit of the variable is, the arithmetic mean of the standard score
# is always 0, and the standard deviation is always 1.
#
# Standard Score = (each value) - (mean), then divide by standard deviation
#
# Parameters:
# values - an array of values
#
# Usage:
# numbers = [73, 61, 14, 41, 49, 87, 69, 65, 36, 7, 53, 100, 57, 45, 56, 34, 37, 70]
# get_standard_scores_from(numbers)

require_relative 'statistics_arithmetic_mean'
require_relative 'statistics_standard_deviation'

def get_standard_scores_from(values)
  standard_scores = [] # empty array
  
  mean = get_arithmetic_mean_from(values)
  standard_deviation = get_standard_deviation_from(values)

  # calculate the standard score for each value, and store it
  # in the array
  for value in values
    standard_score = (value - mean) / standard_deviation
    standard_scores.push(standard_score)
  end
  
  standard_scores
end

# values = [73, 61, 14, 41, 49, 87, 69, 65, 36, 7, 53, 100, 57, 45, 56, 34, 37, 70]
# p get_standard_scores_from(values)