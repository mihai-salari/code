-- show_input.hs
-- show the content of the input file
-- $ runghc show_input < foo.txt

main = interact wordCount
	where wordCount input = show input ++ "\n"