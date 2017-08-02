a = ('a'..'e').to_a
p a

p a[0, 0]
p a[1, 1]
p a[-2, 2]
p a[0..2]
p a[-2..-1]
p a[-1..-2] # Note this will not work
p a[0...-1]

a[0, 2] = ['A', 'B']
p a

a[2...5] = ['C', 'D', 'E']
p a

a[0, 0] = [1, 2, 3]
p a

a[0..2] = []
p a

a[-1, 1] = ['Z']
p a

a[-1, 1] = 'Y'
p a

a[-2, 2] = nil
p a