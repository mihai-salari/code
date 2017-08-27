-- counts the number of lines in its inputs

main = interact wordCount
	where wordCount input = show (lenght (lines input)) ++ "\n"