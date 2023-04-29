rangeProduct :: Int -> Int -> Int
rangeProduct m n
  | n < m = 0
  | n == m = m
  | otherwise = m * rangeProduct (m + 1) n
  
fac :: Int -> Int
fac n 
    | n >= 0 = rangeProduct 1 n+1 `div` (n+1) 
    | otherwise = 0
--rangeProduct 1 nはn=0の時0を返してしまうので、上記のようにしている。


main = do
  -- テストケース1
  print $ fac (-1) == 0
 -- テストケース2
  print $ fac 0 == 1

  -- テストケース2
  print $ fac 1 == 1

  -- テストケース3
  print $ fac 5 == 120

  -- テストケース4
  print $ fac 10 == 3628800

  -- テストケース5
  print $ fac 20 == 2432902008176640000