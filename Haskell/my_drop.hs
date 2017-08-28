-- my_drop.hs
-- personal standard drop function

myDrop n xs = 
	if n <= 0 || null xs -- list xs is empty?
		-- if True
		then xs
	else
		-- if False
		myDrop (n - 1) (tail xs)