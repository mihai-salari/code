arr = [1, 2, 3]

fork do
  arr << 4
  p arr
end