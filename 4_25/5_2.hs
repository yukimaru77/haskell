maxThree :: Integer -> Integer -> Integer -> Integer
maxThree x y z = max x (max y z)

middle :: Integer -> Integer -> Integer -> Integer
middle x y z = x + y + z - maxThree x y z - minThree x y z

minThree :: Integer -> Integer -> Integer -> Integer
minThree x y z = min x (min y z)

orderTriple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
orderTriple (x, y, z) = (minThree x y z, middle x y z, maxThree x y z)


main = do
    print $ middle 1 2 3 == 2
    print $ maxThree 1 2 3 == 3
    print $ minThree 1 2 3 == 1
    -- Test 1
    print (orderTriple (1, 2, 3) == (1, 2, 3))

    -- Test 2
    print (orderTriple (3, 2, 1) == (1, 2, 3))

    -- Test 3
    print (orderTriple (2, 3, 1) == (1, 2, 3))

    -- Test 4
    print (orderTriple (5, 5, 5) == (5, 5, 5))

    -- Test 5
    print (orderTriple (-1, 0, 1) == (-1, 0, 1))

