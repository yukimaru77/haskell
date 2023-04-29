f :: Integer -> Integer
f 0 = 0
f 1 = 44
f 2 = 17
f _ = 0

maxF :: (Integer -> Integer) -> Integer -> Integer
maxF _ 0 = f 0
maxF g n 
    | n < 0 = 0 --エラー処理
    | otherwise = max (g n) (maxF g (n-1))

main :: IO ()
main = do
  print $ maxF f 0 -- 0
  print $ maxF f 1 -- 44
  print $ maxF f 2 -- 44
  print $ maxF f 3 -- 44
  print $ maxF f 4 -- 44
