# Note the use of return value from either the first or second operand of a boolean expression.
# This can be useful if we want to use the value instead of just 'true' or 'false'.

p "test" && "test"
p 1 && 1
p false && 1
p true || 1
p 1 || false