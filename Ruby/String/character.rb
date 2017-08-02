# Single characters can be included literally in a Ruby program by preceding the character
# with a question mark. No quotation marks of any kind are used:
p ?A
p ?"
p ??
p ?\u20AC # But not for multi-codepoint form

p ?\t
p ?\C-x # Ctrl-X
p ?\111 # Octal 0111