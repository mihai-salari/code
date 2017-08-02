# Characteristics of Deviation Score:
# - No matter what the maximum value of your variable is, the arithmetic mean of the deviation score
# is always 50, and the standard deviation is always 10.
# - Whatever the unit of the variable is, the arithmetic mean of the deviation score
# is always 50, and the standard deviation is always 10.
#
# Deviation Score = Standard Score x 10 + 50
#
# Parameters:
# values - an array of values
#
# Usage:
# numbers = [73, 61, 14, 41, 49, 87, 69, 65, 36, 7, 53, 100, 57, 45, 56, 34, 37, 70]
# get_deviation_scores_from(numbers)

require_relative 'statistics_standard_score'

def get_deviation_scores_from(values)
  deviation_scores = []
  
  standard_scores = get_standard_scores_from(values)
  
  for standard_score in standard_scores
    deviation_score = (standard_score * 10) + 50
    deviation_scores.push(deviation_score)
  end
  
  deviation_scores
end

# values = [73, 61, 14, 41, 49, 87, 69, 65, 36, 7, 53, 100, 57, 45, 56, 34, 37, 70]
# p get_deviation_scores_from(values)