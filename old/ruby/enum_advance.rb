triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

5.times { print triangular_numbers.next, " " }

puts

p triangular_numbers.first(3)

def infinite_select(enum, &block)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if block.call(value)
    end
  end
end

p infinite_select(triangular_numbers) {|val| val % 10 == 0}.first(8)

# Add infinite_select_extension to Enumerator class
class Enumerator
  def infinite_select_extension(&block)
    Enumerator.new do |yielder|
      self.each do |value|
        yielder.yield(value) if block.call(value)
      end
    end
  end
end

p triangular_numbers
  .infinite_select_extension { |val| val % 10 == 0 }
  .infinite_select_extension { |val| val.to_s =~ /3/ }
  .first(8)