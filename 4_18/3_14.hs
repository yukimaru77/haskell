import Prelude hiding (min)

-- 2つの整数のうち、小さい方を返す
min :: Int -> Int -> Int
min x y
  | x < y     = x
  | otherwise = y

-- 3つの整数のうち、最小の値を返す
minThree :: Int -> Int -> Int -> Int
minThree x y z
  | x < y && x < z = x
  | y < x && y < z = y
  | otherwise      = z

-- テストコード
main = do
  -- min 関数のテストケース
  putStrLn "--- Testing min function ---"
  putStrLn $ show (min 1 2 == 1) -- True
  putStrLn $ show (min 2 1 == 1) -- True
  putStrLn $ show (min 0 0 == 0) -- True
  
  -- minThree 関数のテストケース
  putStrLn "--- Testing minThree function ---"
  putStrLn $ show (minThree 1 2 3 == 1) -- True
  putStrLn $ show (minThree 2 1 3 == 1) -- True
  putStrLn $ show (minThree 3 2 1 == 1) -- True
  putStrLn $ show (minThree 0 0 0 == 0) -- True
  putStrLn $ show (minThree (-1) (-2) (-3) == (-3)) -- True
  putStrLn $ show (minThree (-1) (-1) (-1) == (-1)) -- True
