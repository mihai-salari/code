require_relative 'SIMPLE_EXPRESSION'
require_relative 'SIMPLE_STATEMENT'

p Add.new(Multiply.new(Number.new(1), Number.new(2)), Multiply.new(Number.new(3), Number.new(4)))
p Number.new(10)
p Number.new(1).reducible?
p Add.new(Number.new(1), Number.new(10)).reducible?

expression = Add.new(Multiply.new(Number.new(1), Number.new(2)), Multiply.new(Number.new(3), Number.new(4)))
p expression

p expression.reducible?

while expression.reducible?
  expression = expression.reduce
  p expression
end

p expression.reducible?

# Note this script need to modify to work with new environment requirement