#
# This class represents a sequence of numbers characterized by the three parameters from, to, and by.
# The numbers x in the sequence obey the following two constraints:
# 
# from <= x <= to
# x = from + n*by, where n is an integer
#

class Sequence
  # This is an enumerable class; it defines an each iterator below.
  include Enumerable
  
  def initialize(from, to, by)
    @from, @to, @by = from, to, by
  end
  
  # This is the iterator required by the Enumerable module
  def each
    x = @from
    while x <= @to
      yield x # Pass x to the block associated with the iterator
      x += @by
    end
  end
  
  def length
    return 0 if @from > @to
    Integer((@to - @from)/@by) + 1 # Compute and return the length of sequence
  end
  
  alias size length
  
  # Override the array-access operator
  def[](index)
    return nil if index < 0
    v = @from + index*@by
    
    if v <= @to # If it is part of the sequence, return it
      v
    else # else return nil
      nil
    end
    
  end
  
  def *(factor)
    Sequence.new(@from*factor, @to*factor, @by*factor)
  end
  
  def +(offset)
    Sequence.new(@from+offset, @to+offset, @by)
  end
end

# Examples

s = Sequence.new(1, 100, 2)

s.each do |v|
  print v, " "
end

puts s[s.size - 1]

t = (s+1)*2

p t