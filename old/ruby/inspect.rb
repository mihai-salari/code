o = Object.new

p o

# Before and after...

def o.inspect
  '[my object]'
end

p o