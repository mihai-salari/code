require_relative 'SIMPLE_EXPRESSION'
require_relative 'SIMPLE_STATEMENT'
require_relative 'SIMPLE_SEQUENCE'
require_relative 'SIMPLE_VM'

# For evaluation of expression only
#p Machine.new(LessThan.new(Number.new(5), Add.new(Number.new(10), Number.new(10)))).run

# For evaluation of expression and environment
#p Machine.new(Add.new(Variable.new(:x), Variable.new(:y)), { x: Number.new(3), y: Number.new(4) }).run

# For evaluation of assignment statement
# Machine.new(Assign.new(:x, Add.new(Variable.new(:x), Number.new(1))), { x: Number.new(2) }).run

# For evaluation of conditional statement
# Machine.new(If.new(Variable.new(:x), Assign.new(:y, Number.new(1)), Assign.new(:y, Number.new(2))), { x: Boolean.new(true) }).run
# Machine.new(If.new(Variable.new(:x), Assign.new(:y, Number.new(1)), DoNothing.new), { x: Boolean.new(false) }).run

# For evaluation of sequence statement
# Machine.new(
#   Sequence.new(
#     Assign.new(:x, Add.new(Number.new(1), Number.new(1))),
#     Assign.new(:y, Add.new(Variable.new(:x), Number.new(3))),
#   ), {}).run


# For evaluation of while statement
Machine.new(
  While.new(LessThan.new(Variable.new(:x), Number.new(5)), Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
  ), { x: Number.new(1) }
).run