# An abstract machine that begins with an initial expressions and environment,
# and then uses the current expression and environment to produce a new expression
# in each small reduction step, leaving the environment unchanged.

# Added to support expression and environment evaluation
# class Machine < Struct.new(:expression, :environment)
#   def step
#     self.expression = expression.reduce(environment)
#   end
#
#   def run
#     while expression.reducible?
#       puts expression
#       step
#     end
#     puts expression
#   end
# end

# Added to support assignment statement
class Machine < Struct.new(:statement, :environment)
  def step
    self.statement, self.environment = statement.reduce(environment)
  end
  
  def run
    while statement.reducible?
      puts "#{statement}, #{environment}"
      step
    end
    puts "#{statement}, #{environment}"
  end
end