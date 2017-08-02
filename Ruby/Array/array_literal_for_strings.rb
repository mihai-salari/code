# %w - same like %q, follows single-quoted string rules
p %w[this is a test]
p %w|( [ { <|
  
# %W - same like %Q, follow double-quoted string rules
p %W(\s \t \r \n)