module Summable
  def sum
    inject(:+)
  end
end

class Array
  include Summable
end

class Range
  include Summable
end

require_relative "mixin_enumerable_inject"
class VowelFinder
  include Summable
end

p [1, 2, 3, 4, 5].sum
p ('a'..'m').sum

vf = VowelFinder.new("hello world, lovely world")
p vf.sum