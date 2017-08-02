empty = Array.new
p empty

nils = Array.new(3)
p nils

zeros = Array.new(4, 0)
p zeros

hellos = Array.new(10, "hello")
p hellos

copy = nils
p nils.object_id
p copy.object_id

realcopy = Array.new(nils)
p nils.object_id
p realcopy.object_id

count = Array.new(3) do |i|
  i + 2
end

p count