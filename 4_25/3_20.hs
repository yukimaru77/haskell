-- 3つの整数の平均値を返す関数
averageThree :: Integer -> Integer -> Integer -> Float
averageThree a b c = fromIntegral (a + b + c) / 3.0

-- 平均値よりも大きい値がいくつあるかを計算する関数
howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage a b c
  | a' > avg && b' > avg && c' > avg = 3
  | a' > avg && b' > avg || a' > avg && c' > avg || b' > avg && c' > avg = 2
  | a' > avg || b' > avg || c' > avg = 1
  | otherwise = 0
  where avg = averageThree a b c
        a' = fromIntegral a
        b' = fromIntegral b
        c' = fromIntegral c


main = do
  -- averageThree のテストコード
  print $ show (averageThree 1 2 3) == "2.0" -- 結果: True
  print $ show (averageThree 5 5 5) == "5.0" -- 結果: True
  print $ show (averageThree 1 1 1) == "1.0" -- 結果: True

  -- howManyAboveAverage のテストコード
  print $ howManyAboveAverage 1 2 3 == 1 -- 結果: True
  print $ howManyAboveAverage 5 5 5 == 0 -- 結果: True
  print $ howManyAboveAverage 1 1 1 == 0 -- 結果: True
