# The number of ways n objects can be chosen among n possible ones is 
# equal to n-factorial.
#
# For example, how many different ways seven objects can be arranged,
# 7! = 3 x (3 - 1) x (3 - 2) x ... x 2 x 1
#    = 7 x 6 x 5 x 4 x 3 x 2 x 1
#    = 5040

def get_factorial_of(n)
  if n != 1
    n * get_factorial_of(n - 1)
  else
    n * 1
  end
end

# p get_factorial_of(8)