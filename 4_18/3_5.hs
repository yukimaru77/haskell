-- NAND gate
nAnd1 :: Bool -> Bool -> Bool
nAnd1 x y = not (x && y)

-- NAND gateの別バージョン
nAnd2 :: Bool -> Bool -> Bool
nAnd2 True True = False
nAnd2 _ _ = True

-- テストコード
main = do
  print $ nAnd1 True True -- False
  print $ nAnd1 True False -- True
  print $ nAnd1 False True -- True
  print $ nAnd1 False False -- True
  print $ nAnd2 True True -- False
  print $ nAnd2 True False -- True
  print $ nAnd2 False True -- True
  print $ nAnd2 False False -- True
  