-- count_chars.hs
-- counts the number of characters in its inputs
-- $ runghc count_chars < foo.txt

main = interact wordCount
	where wordCount input = show (length (words (words input))) ++ "\n"