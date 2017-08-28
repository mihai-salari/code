-- quadruple.hs

-- first function definition
double x = x + x

-- second function definition
quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns