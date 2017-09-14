x = 1
y = 2
a, b = x, y
p a, b
p x, y

color = ["black", "white", "blue", "grey"]
p color

a, b, c, d = color

p a, b, c, d

# Parallel assignment for multiple return values
def polar(x, y)
  theta = Math.atan2(y, x)
  r = Math.hypot(x, y)
  [r, theta]
end

distance, angle = polar(2, 2)

p distance, angle