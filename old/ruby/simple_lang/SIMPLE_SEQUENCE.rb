# Sequences

#  --- Reduction Rule for Sequence ---
# 
#  If the first statement is a <<do-nothing>> statement, reduce to the second statement
#  and the original environment.
#
#  If the first statement is not <<do-nothing>>, then reduce it, resulting in a new sequence
#  (the reduced first statement followed by the second statement) and a reduced environment.
#

class Sequence < Struct.new(:first, :second)
  def to_s
    "#{first}; #{second}"
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    true
  end
  
  def reduce(environment)
    case first
    when DoNothing.new
      [second, environment]
    else
      reduced_first, reduced_environment = first.reduce(environment)
      [Sequence.new(reduced_first, second), reduced_environment]
    end
  end
end