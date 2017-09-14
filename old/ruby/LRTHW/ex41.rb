require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
  "class ### < ###\nend" => "Make a class named ### that is-a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend" => "Class ### has-a initializer that takes @@@ parameters.",
  "class ###\n\tdef ***(@@@)\n\tend\nend" => "Class ### has-a function named *** that takes @@@ parameters.",
  "*** = ###.new()" => "Set *** to an instance of class ###.",
  "***.***(@@@)" => "From *** get the *** function, and call it with parameters @@@.",
  "***.*** = '***'" => "From *** get the *** attribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == "english"

open(WORD_URL) do |f|
  f.each_line do |w|
    WORDS.push(w.chomp)
  end
end

# p WORDS
# p PHRASE_FIRST

def craft_names(rand_words, snippet, pattern, caps=false)
  # p pattern
  names = snippet.scan(pattern).map do
    word = rand_words.pop()
    # puts "word: #{word}"
    caps ? word.capitalize : word
  end
  
  # p names
  
  return names * 2
end

def craft_params(rand_words, snippet, pattern)
  names = (0...snippet.scan(pattern).length).map do
    param_count = rand(3) + 1
    params = (0...param_count).map { |x| rand_words.pop() }
    params.join(', ')
  end
  
  return names * 2
end

def convert(snippet, phrase)
  rand_words = WORDS.sort_by { rand }
  # p rand_words
  class_names = craft_names(rand_words, snippet, /###/, caps=true)
  other_names = craft_names(rand_words, snippet, /\*\*\*/)
  param_names = craft_params(rand_words, snippet, /@@@/)
  
  results = []
  
  [snippet, phrase].each do |sentence|
    # puts sentence
    # p class_names
    result = sentence.gsub(/###/) { |x| class_names.pop }
    # puts result
    result.gsub!(/\*\*\*/) { |x| other_names.pop }
    # puts result
    result.gsub!(/@@@/) { |x| param_names.pop }
    # puts result
    
    results.push(result)
  end
  
  # puts results
  return results
end

loop do  
  snippets = PHRASES.keys().sort_by { rand }
  # p PHRASES.keys()
  # p snippets
  
  for snippet in snippets
    phrase = PHRASES[snippet]
    question, answer = convert(snippet, phrase)
    
    if PHRASE_FIRST
      question, answer = answer, question
    end
    
    print question, "\n\n> "
    
    exit(0) unless $stdin.gets
    
    puts "\nANSWER: %s\n\n" % answer
  end
end