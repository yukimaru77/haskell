rangeProduct :: Integer -> Integer -> Integer
rangeProduct m n
  -- m>nの間は再帰する
  | m > n = m * rangeProduct (m - 1) n
  -- m==nの時再帰終了
  | m == n = n
  -- m<nの場合は0を出力
  | otherwise = 0

main = do
  -- テストケース1
  print $ rangeProduct 5 3 == 0

  -- テストケース2
  print $ rangeProduct 5 5 == 5

  -- テストケース3
  print $ rangeProduct 2 4 == 24

  -- テストケース4
  print $ rangeProduct 0 10 == 0

  -- テストケース5
  print $ rangeProduct 0 0 == 0

  -- テストケース6
  print $ rangeProduct 1 1 == 1