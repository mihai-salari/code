-- count_words.hs
-- counts the number of words in its inputs
-- $ runghc count_words < foo.txt

main = interact wordCount
	where wordCount input = show (length (words input)) ++ "\n"