messyMain :: IO()

messyMain = do
	print "Who is this email for?"
	recipient <- getLine
	print "What is the title?"
	title <- getLine
	print "Who is the author?"
	author <- getLine

	print ("Dear " ++ recipient ++ ",\n" ++ "Hi, how are you? Thanks for buying " ++ title ++ "\n\nthanks,\n" ++ author)