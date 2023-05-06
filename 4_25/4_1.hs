maxThree :: Integer -> Integer -> Integer -> Integer
maxThree x y z
    | x >= y && x >= z = x
    | y >= z = y
    | otherwise = z

-- 1つ目の定義はmaxFour1、2つ目の定義はmaxFour2、3つ目の定義はmaxFour3とする。
maxFour1 :: Integer -> Integer -> Integer -> Integer -> Integer
maxFour1 a b c d
  | a >= b && a >= c && a >= d = a
  | b >= c && b >= d           = b
  | c >= d                  = c
  | otherwise                  = d

maxFour2 :: Integer -> Integer -> Integer -> Integer -> Integer
maxFour2 a b c d = max (max a b) (max c d)

maxFour3 :: Integer -> Integer -> Integer -> Integer -> Integer
maxFour3 a b c d = max (maxThree a b c) d


main :: IO ()
main = do
  putStrLn "Testing maxFour1..."
  testMaxFour1
  putStrLn "Testing maxFour2..."
  testMaxFour2
  putStrLn "Testing maxFour3..."
  testMaxFour3

testMaxFour1 :: IO ()
testMaxFour1 = do
  assertEqual "maxFour1 1 2 3 4" (maxFour1 1 2 3 4) 4
  assertEqual "maxFour1 1 1 1 1" (maxFour1 1 1 1 1) 1
  assertEqual "maxFour1 1 2 2 1" (maxFour1 1 2 2 1) 2
  assertEqual "maxFour1 1 1 2 2" (maxFour1 1 1 2 2) 2
  assertEqual "maxFour1 2 1 1 2" (maxFour1 2 1 1 2) 2

testMaxFour2 :: IO ()
testMaxFour2 = do
  assertEqual "maxFour2 1 2 3 4" (maxFour2 1 2 3 4) 4
  assertEqual "maxFour2 1 1 1 1" (maxFour2 1 1 1 1) 1
  assertEqual "maxFour2 1 2 2 1" (maxFour2 1 2 2 1) 2
  assertEqual "maxFour2 1 1 2 2" (maxFour2 1 1 2 2) 2
  assertEqual "maxFour2 2 1 1 2" (maxFour2 2 1 1 2) 2

testMaxFour3 :: IO ()
testMaxFour3 = do
  assertEqual "maxFour3 1 2 3 4" (maxFour3 1 2 3 4) 4
  assertEqual "maxFour3 1 1 1 1" (maxFour3 1 1 1 1) 1
  assertEqual "maxFour3 1 2 2 1" (maxFour3 1 2 2 1) 2
  assertEqual "maxFour3 1 1 2 2" (maxFour3 1 1 2 2) 2
  assertEqual "maxFour3 2 1 1 2" (maxFour3 2 1 1 2) 2

assertEqual :: (Eq a, Show a) => String -> a -> a -> IO ()
assertEqual label x y
  | x == y    = putStrLn (label ++ " - Passed")
  | otherwise = error (label ++ " - Failed: expected " ++ show y ++ ", but got " ++ show x)
