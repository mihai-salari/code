# s = 'azcbobobegghakl'
# s = 'abcbcd'
s = 'abcdefghijklmnopqrstuvwxyz'

cur_char = ''
next_char = ''
answer = ''
longest = ''
start = True

for char in s:
    print(char)
    
    if start:
        cur_char = char
        answer = answer + cur_char
        start = False
    else:
        next_char = char

        print('cur_char: ' + cur_char + ' ' + 'next_char: ' + next_char)
        
        if cur_char <= next_char:            
            print('cur_char <= next_char is True')
            answer = answer + next_char
            print('answer: ' + answer)
        else:
            # Whenever the next character is larger than current character,
            # we know we have to reset the game, and before reset we check whether the length of answer
            # is longer than the longest found, if yes, we found a new longest substring
            print('cur_char <= next_char is False')
            if len(answer) > len(longest):
                longest = answer
                answer = ''
                answer = answer + next_char
                print('answer: ' + answer)
                print('longest: ' + longest)
            else:
                answer = ''
                answer = answer + next_char
                print('answer: ' + answer)
                print('longest: ' + longest)
        
        cur_char = next_char
    
# Final test to make sure we get the longest substring from answer into
# our longest variable (esp. important for s when s = 'a to z' as we will never 
# have a chance to record down the longest substring if s is a string from smallest character
# to largest)
if len(answer) > len(longest):
    longest = answer

print('Longest substring in alphabetical order is: ' + longest)