# Statements - to be evaluated to make some change to the state of the abstract machine.

class DoNothing
  def to_s
    'do-nothing'
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def ==(other_statement)
    other_statement.instance_of?(DoNothing)
  end
  
  def reducible?
    false
  end
end

#  --- Reduction Rule for Assignment ---
#
#  If the assignment's expression can be reduced, then reduce it, resulting in a reduced assignment
#  statement and an unchanged environment.
#
#  If the assignment's expression can't be reduced, then update the environment to associate that 
#  expression with the assignment's variable, resulting in a <<do-nothing>> statement and a new environment.
#

class Assign < Struct.new(:name, :expression)
  def to_s
    "#{name} = #{expression}"
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    true
  end
  
  def reduce(environment)
    if expression.reducible?
      [Assign.new(name, expression.reduce(environment)), environment]
    else
      [DoNothing.new, environment.merge({ name => expression })]
    end
  end
end
  
#  --- Reduction Rule for Conditional ---
# 
#  If the condition can be reduced, then reduce it, resulting in a reduced conditional statement and 
#  an unchanged environment.
#
#  If the condition is the expression <<true>>, reduce to the consequence statement and an unchanged 
#  environment.
#
#  If the condition is the expression <<false>>, reduce to the alternative statement and an unchanged
#  environment.
#

class If < Struct.new(:condition, :consequence, :alternative)
  def to_s
    "if (#{condition}) { #{consequence}} else { #{alternative} }"
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    true
  end
  
  def reduce(environment)
    if condition.reducible?
      [If.new(condition.reduce(environment), consequence, alternative), environment]
    else
      case condition
      when Boolean.new(true)
        [consequence, environment]
      when Boolean.new(false)
        [alternative, environment]
      end
    end
  end
end

class While < Struct.new(:condition, :body)
  def to_s
    "while (#{condition}) { #{body} }"
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    true
  end
  
  def reduce(environment)
    [If.new(condition, Sequence.new(body, self), DoNothing.new), environment]
  end
end