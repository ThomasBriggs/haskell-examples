double :: Int -> Int
double x = x + x

quad :: Int -> Int
quad x = double (double x)

factorial :: Int -> Int
factorial n = product [1..n]

f :: [Int] -> [Int]
f[] = []
f (x:xs) = f ys ++  [x] ++ f zs
	where
		ys = [a | a <- xs, a <= x]
		zs = [b | b <- xs, b > x]


n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]
