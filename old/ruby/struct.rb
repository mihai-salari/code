class Point < Struct.new(:x, :y)
  def +(other_point)
    Point.new(x + other_point.x, y + other_point.y)
  end
  
  def inspect
    "#<Point (#{x}, #{y})>"
  end
end

a = Point.new(1, 2)
p a
puts a

b = Point.new(3, 4)
p b

p a + b

p a.x
p a.y

a.x = 9
p a
p a + b

p a == b
p a != b

# Monkey patching (extension)
class Point
  def -(other_point)
    Point.new(x - other_point.x, y - other_point.y)
  end
end

p a - b