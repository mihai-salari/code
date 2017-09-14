a = [1, 3, "cat"]
enum_a = a.to_enum
p enum_a
# p enum_a.next
# p enum_a.next
# p enum_a.next
# p enum_a.next

loop do
  p enum_a.next
end

h = {dog: "canine", fox: "vulpine"}
enum_h = h.to_enum
p enum_h

loop do
  p enum_h.next
end

letters = ('a'..'z').to_enum

loop do
  p letters.next
end

result = []
[ 'a', 'b', 'c' ].each_with_index { |item, index| result << [item, index]}
p result

result = []
"cat".each_char.each_with_index  { |item, index| result << [item, index]}
p result

enum_in_three = (1..10).enum_for(:each_slice, 3)
p enum_in_three.to_a