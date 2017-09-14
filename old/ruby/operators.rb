class MyOperators
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def name=(value)
    @name = value
  end
  
  def name?
    !@name.empty? # is @name empty? note the use of ! logical operator to means return true if it is not empty
  end

end

mo1 = MyOperators.new("foo")
p mo1.name

# assignment
mo1.name = "bar"
p mo1.name

# method invocation
mo1.name=("foo")
p mo1.name

mo1.name = ""

if mo1.name?
  print mo1.name
else
  print "I don't have a name."
end