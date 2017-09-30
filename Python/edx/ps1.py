s = 'usvlodeqslzupjbqozcnu'
numberOfVowels = 0

for c in s:    
    if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u':
        numberOfVowels += 1

print('Number of vowels: ' + str(numberOfVowels))