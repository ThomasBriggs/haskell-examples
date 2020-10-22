factors :: Int -> [Int]
factors x = [n | n <- [1 .. x], x `mod` n == 0]

prime :: Int -> Bool
prime x
  | x `mod` 2 == 0 = False
  | length (factors x) > 2 = False
  | otherwise = True

prime2 :: Int -> Bool
prime2 x
  | x `mod` 2 == 0 = False
  | (x - 1) `mod` 3 == 0 = False
  | (x + 1) `mod` 3 == 0 = False
  | length (factors x) > 2 = False
  | otherwise = True