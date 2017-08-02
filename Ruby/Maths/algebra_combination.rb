# Choosing k among n items without considering the order in which they
# are chose is called Combination. The number of different ways this can 
# be done is written by using the binomial coefficient notation.

require_relative 'algebra_factorial'

# n choose k
def get_combination_of(n, k)
  (get_factorial_of(n)) / ((get_factorial_of(k)) * (get_factorial_of(n - k)))
end

# p get_combination_of(7, 3)