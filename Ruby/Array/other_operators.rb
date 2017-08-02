a = [1, 2, 3]
b = [4, 5, 6]

# + creates a new array that contains the elements of both its operands
c = a + a
p c
c = c + b
p c

# - subtracts one array from another, it begins by making a copy of its lefthand
# array, and then removes any elements from that copy if they appear anywhere in the
# righthand array
d = c - a
p d

# << append elements to end of an existing array
a = []
p a
a << 1 << 2 << 3
p a

a << b
p a

# * for repetition
p a
a = a * 2
p a

# | concatenates its arguments and then removes all duplicate elements from the result
a = [1, 1, 2, 2, 3, 3, 4, 4]
b = [5, 5, 4, 4, 3, 3, 2, 2]
p a | b
p b | a

# & returns an array that holds element that appear in both of the operand arrays, the
# returned array does not contain any duplicate elements

p a & b
p b & a