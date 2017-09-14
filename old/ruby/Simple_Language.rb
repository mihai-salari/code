# Small-step Semantics with SIMPLE Programming Language

class Variable < Struct.new(:name)
  def to_s
    name.to_s
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    true
  end
  
  def reduce(environment)
    environment[name]
  end
end

class Number < Struct.new(:value)
  def to_s
    value.to_s
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    false
  end
end

class Add < Struct.new(:left, :right)
  def to_s
    "#{left} + #{right}"
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    true
  end
  
  def reduce(environment)
    if left.reducible?
      Add.new(left.reduce(environment), right)
    elsif right.reducible?
      Add.new(left, right.reduce(environment))
    else
      Number.new(left.value + right.value)
    end
  end      
end

class Multiply < Struct.new(:left, :right)
  def to_s
    "#{left} * #{right}"
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    true
  end
  
  def reduce(environment)
    if left.reducible?
      Multiply.new(left.reduce(environment), right)
    elsif right.reducible?
      Multiply.new(left, right.reduce(environment))
    else
      Number.new(left.value * right.value)
    end
  end      
  
end

class Boolean < Struct.new(:value)
  def to_s
    value.to_s
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    false
  end
end

class LessThan < Struct.new(:left, :right)
  def to_s
    "#{left} < #{right}"
  end
  
  def inspect
    "<<#{self}>>"
  end
  
  def reducible?
    true
  end
  
  def reduce(environment)
    if left.reducible?
      LessThan.new(left.reduce(environment), right)
    elsif right.reducible?
      LessThan.new(left, right.reduce(environment))
    else
      Boolean.new(left.value < right.value)
    end
  end
end

class Machine < Struct.new(:expression, :environment)
  def step
    self.expression = expression.reduce(environment)
  end
  
  def run
    while expression.reducible?
      puts expression
      step
    end
    puts expression
  end
end

# p Add.new(Multiply.new(Number.new(1), Number.new(2)), Multiply.new(Number.new(3), Number.new(4)))
# p Number.new(10)
# p Number.new(1).reducible?
# p Add.new(Number.new(1), Number.new(10)).reducible?
#
# expression = Add.new(Multiply.new(Number.new(1), Number.new(2)), Multiply.new(Number.new(3), Number.new(4)))
# expression2 = expression
# p expression
#
# p expression.reducible?
#
# while expression.reducible?
#   expression = expression.reduce
#   p expression
# end
#
# p expression.reducible?
#
# # Using virtual machine to run
# p Machine.new(expression2).run
#
# p Machine.new(
#   LessThan.new(Number.new(5), Add.new(Number.new(10), Number.new(10)))
# ).run

p Machine.new(Add.new(Variable.new(:x), Variable.new(:y)), { x: Number.new(3), y: Number.new(4) }).run

# Updated 2017-06-24
# Continue of this work has been move to simple_lang folder for better organization of files and language structure.