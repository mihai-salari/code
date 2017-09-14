# 
# We extend the built-in Range class with 'by' iterator, please note that by default Range class
# already has an iterator named 'step' that serves the same purpose, it is just an example of 
# how to implement an iterator.
#

class Range # Open an existing class for additions
  # Define an iterator named by
  def by(step)
    x = self.begin
    if exclude_end?
      while x < self.end
        yield x
        x += step
      end
    else
      while x <= self.end
        yield x
        x += step
      end
    end
  end
end

# Examples

(0..10).by(2) { |x| print x, " " }

print "\n"

(0...10).by(3) { |y| print y, " " }
  