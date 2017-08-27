-- sort_with_quicksort.hs
-- sorts a list using the quicksort algorithm

f [] = []
f (x:xs) = f ys ++ [x] ++ f zs -- a list xs that starts with value x, and recursively sort ys and zs with function f
	where
		ys = [a | a <- xs, a <= x] -- take all the elements a that are less than x, put in list ys
		zs = [b | b <- xs, b > x] -- take all the elements b that are larger than x, put in list zs