-- count_chars.hs
-- counts the number of characters in its inputs
-- $ runghc count_chars < chars.txt

main = interact wordCount
	where wordCount input = show (length input) ++ "\n"