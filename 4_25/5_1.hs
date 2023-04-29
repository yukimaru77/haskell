maxOccurs :: Integer -> Integer -> (Integer, Integer)
maxOccurs x y
  | x == y = (x, 2)
  | x > y = (x, 1)
  | otherwise = (y, 1)

maxThreeOccurs :: Integer -> Integer -> Integer -> (Integer, Integer)
maxThreeOccurs x y z 
    | xy == yz && yz == xz = (maxVal, 3) -- 3つタプルが等しいのはx=y=zのケースのみ
    | xy_max == yz_max && yz_max == xz_max = (maxVal, 2) -- x=y=zのケースを除くと、この条件に対応するケースは最大値が2つあるケースのみ
    | otherwise = (maxVal, 1) -- その他のケースは最大値が1つのケースのみ。
    where
        xy =  maxOccurs x y
        yz =  maxOccurs y z
        xz =  maxOccurs z x
        (xy_max, _) = xy
        (yz_max, _) = yz
        (xz_max, _) = xz
        (maxVal, _) = maxOccurs xy_max yz_max

main = do
  -- maxOccurs tests
  print $ maxOccurs 1 2 == (2, 1)
  print $ maxOccurs 2 1 == (2, 1)
  print $ maxOccurs 2 2 == (2, 2)
  -- maxThreeOccurs tests
  print $ maxThreeOccurs 1 2 3 == (3, 1)
  print $ maxThreeOccurs 3 2 1 == (3, 1)
  print $ maxThreeOccurs 1 3 3 == (3, 2)
  print $ maxThreeOccurs 3 3 1 == (3, 2)
  print $ maxThreeOccurs 3 3 3 == (3, 3)