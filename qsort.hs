qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort (filter (<=x) xs) ++ [x] ++ qsort (filter (>x) xs)

qsort1 [] = []
qsort1 (x:xs) = 
	qsort1 a ++ [x] ++ qsort b
	where
		a = [a | a <- xs, a <= x]
		b = [b | b <- xs, b > x]

append1 xs x = (x:xs)

length1 :: [a] -> Int
length1 xs = foldr (\ _ n -> n + 1) 0 xs
