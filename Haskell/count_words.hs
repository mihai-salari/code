-- count_lines.hs
-- counts the number of lines in its inputs
-- $ runghc count_lines < foo.txt

main = interact wordCount
	where wordCount input = show (length (words input)) ++ "\n"