encoding = Encoding.list

for enc in encoding
  puts enc
end

# Default external encoding
puts Encoding.default_external

# Encoding for current locale
puts Encoding.locale_charmap