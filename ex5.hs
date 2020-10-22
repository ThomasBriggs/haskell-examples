head1 :: (Num a) => [a] -> a
head1 [] = -1
head1 (x:_) = x

double :: (Num a) => [a] -> [a]
double y = map (\x ->x+x) y 

add :: (Num a) => a -> a -> a
add x y = x + y

sqList n = [x^2 | x <- [1..n]]

fx [x] = [(y) | y <- [x..5] 
