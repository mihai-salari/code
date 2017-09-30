s = 'bobobobbob'
# s = 'azcbobobegghaklbobbbobbobkl'
# s = 'bobtobobeobobobobobbobobbobbbobbbobobooiobobo'
# s = 'jboobfobobbobbxhoboblbzogobob'
# s = 'sobooboboboboobotboboboboboboobfqobobbob'
# s = 'obobmobobobobbbobbbyobooobobobywllbolz'
# s = 'oboboobobosuztp'
# s = 'bobobobobboeboobcboobazqedobobcsbobo'

count = 0
weight = 0
string = ''

for c in s:
    print('c is ' + c)
        
    if c == 'b':
        if weight == 0:
            # First encounter
            string = string + 'b'
            print(string)
            
            weight += 1
        
        if string == 'bo':
            # We got a 'bob'
            count += 1
            weight = 1 # Reset weight to 1
            string = 'b' # Reset to start with 'b'
    
    elif c == 'o':
        if weight > 1:
            # We got duplicate 'o', so reset string and weight
            string = ''
            weight = 0 
        
        if weight == 1:
            # We got a 'b' and we are expecting an 'o'
            string = string + 'o'
            print(string)
            
            weight += 1
            
    else:
        # We got neither 'b' or 'o'
        # So reset string and weight
        string = ''
        weight = 0
                    
print('Number of times bob occurs is: ' + str(count))