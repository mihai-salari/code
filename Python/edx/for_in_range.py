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