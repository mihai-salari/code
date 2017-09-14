require_relative 'SIMPLE_EXPRESSION'
require_relative 'SIMPLE_STATEMENT'

statement = Assign.new(:x, Add.new(Variable.new(:x), Number.new(1)))
puts "statement: #{statement}"

environment = { x: Number.new(2) }
puts "environment: #{environment}"

# p statement, environment

puts "while loop start..."

while statement.reducible?
  statement, environment = statement.reduce(environment)
  puts "statement: #{statement}"
  puts "environment: #{environment}"
end

puts "while loop end..."