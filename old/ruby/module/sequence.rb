module Sequence
  def self.fromtoby(from, to, by) # A singleton method of the module
    x = from
    while x <= to
      yield x
      x += by
    end
  end
end

Sequence.fromtoby(1, 100, 2) do |number|
  print number, " "
end