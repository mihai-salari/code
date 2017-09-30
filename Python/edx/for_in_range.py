#!/Users/choonsiong/anaconda3/bin/python3

for number in range(10):
    print(number)
    
print("-----------------")
    
for number in range(1,10):
    print(number)
    
print("-----------------")

for number in range(1, 10, 2): # (start,end,step)
    print(number)

print("-----------------")
    
print("Hello!")

for i in range(10,0,-2):
    print(i)

print("-----------------")    

total = 0
end = 6

for i in range(end+1):
    total += i

print(total)

print("-----------------")

num = 10
for num in range(5):
    print(num)
print(num)

print("-----------------")

for letter in 'hola':
    print(letter)
    
print("-----------------")

divisor = 2
for num in range(0, 10, 2):
    print(num/divisor) 

print("-----------------")
    
school = 'Massachusetts Institute of Technology'
numVowels = 0
numCons = 0

for char in school:
    if char == 'a' or char == 'e' or char == 'i' \
       or char == 'o' or char == 'u':
        numVowels += 1
    elif char == 'o' or char == 'M':
        print(char)
    else:
        numCons -= 1

print('numVowels is: ' + str(numVowels))
print('numCons is: ' + str(numCons))