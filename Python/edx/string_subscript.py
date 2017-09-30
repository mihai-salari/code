#!/Users/choonsiong/anaconda3/bin/python3

name = "foo bar"
print(name)
print(name[0])
print(name[-1])
print(name[4:])
print(name[1:])
print(name[:3])
print(name[:])

print(type(name[0]))

print('o' in name)
print('low' in 'helloworld')

print('world'[:-1])
print('helloworld'[1:9])
print('helloworld'[1:9:2]) # String slicing - [start:end:step], not included end
print('helloworld'[::-1])

# foo bar
# f
# r
# bar
# oo bar
# foo
# foo bar
# <class 'str'>
# True
# True
# worl
# elloworl
# elwr
# dlrowolleh
