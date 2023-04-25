exOr :: Bool -> Bool -> Bool
exOr True False = True
exOr False True = True
exOr _ _ = False 

-- テストコード
main = do
  print $ exOr True False -- True
  print $ exOr False True -- True
  print $ exOr True True -- False
  print $ exOr False False -- False