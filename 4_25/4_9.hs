
-- whereありバージョン
    
maxThreeOccurs :: Int -> Int -> Int -> (Int,Int)
maxThreeOccurs x y z = (maxVal, count)
    where
        maxVal = maxThree x y z
        count = countMax maxVal x y z
        maxThree :: Int -> Int -> Int -> Int
        maxThree x y z
            | x >= y && x >= z = x
            | y >= z = y
            | otherwise = z
        countMax :: Int -> Int -> Int -> Int -> Int
        countMax maxVal x y z
            | x == maxVal && y == maxVal && z == maxVal = 3
            | x == maxVal && y == maxVal || x == maxVal && z == maxVal || y == maxVal && z == maxVal = 2
            | otherwise = 1

main :: IO ()
main = do
  -- Test cases
  print $ maxThreeOccurs 1 2 3 == (3,1) -- Expected output: True
  print $ maxThreeOccurs 5 5 5 == (5,3) -- Expected output: True
  print $ maxThreeOccurs 1 1 2 == (2,1) -- Expected output: True
  print $ maxThreeOccurs 5 5 4 == (5,2) -- Expected output: True