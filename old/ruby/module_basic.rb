module Addition
  def add(x, y)
    x + y
  end
end

class AddingCalculator
  include Addition
end

ac = AddingCalculator.new
puts ac.add(10, 2)