
-- whereありバージョン

maxThreeOccurs :: Int -> Int -> Int -> (Int,Int)
maxThreeOccurs x y z = (val, count)
    where
        val = maxThree x y z
        count = countVal val x y z
        maxThree :: Int -> Int -> Int -> Int
        maxThree x y z
            | x >= y && x >= z = x
            | y >= z = y
            | otherwise = z
        countVal :: Int -> Int -> Int -> Int -> Int
        countVal val x y z
            | x == val && y == val && z == val = 3
            | x == val && y == val || x == val && z == val || y == val && z == val = 2
            | otherwise = 1


main :: IO ()
main = do
  -- Test cases
  print $ maxThreeOccurs 1 2 3 == (3,1) -- Expected output: True
  print $ maxThreeOccurs 5 5 5 == (5,3) -- Expected output: True
  print $ maxThreeOccurs 1 1 2 == (2,1) -- Expected output: True
  print $ maxThreeOccurs 5 5 4 == (5,2) -- Expected output: True