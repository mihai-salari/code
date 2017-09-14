# Word frequency

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

p words_from_string("But I didn't inhale, he said (emphatically)")

def count_frequency(word_list)
  counts = Hash.new(0)
  
  for word in word_list
    counts[word] += 1
  end
  
  counts
end

p count_frequency(words_from_string("But I didn't inhale, he said (emphatically)"))

raw_text = %{The problem breaks down into two parts. First, given some text as a string, return a list of words. That sounds like an array. Then, build a count for each distinct word. That sounds like a use for a hash --- we can index it with the word and use the corresponding entry to keep a count.}

word_list = words_from_string(raw_text)
p word_list.class
p word_list

counts = count_frequency(word_list)
p counts.class
p counts

sorted = counts.sort_by {|word, count| count}
p sorted.class
p sorted

top_five = sorted.last(5)

for i in 0...5
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end

# Using iterator and block
top_five.each do |word, count|
  puts "#{word}: #{count}"
end