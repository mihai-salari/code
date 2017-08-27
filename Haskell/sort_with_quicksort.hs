-- sort_with_quicksort.hs
-- sorts a list using the quicksort algorithm

f [] = []
f (x:xs) = f ys ++ [x] ++ f zs
	where
		ys = [a | a <- xs, a <= x]
		zs = [b | b <- xs, b > x]