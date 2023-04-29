data Move = Rock | Paper | Scissors deriving (Show,Eq)

data Result = Win | Lose | Draw deriving (Show,Eq)

outcome :: Move -> Move -> Result
outcome Rock Scissors = Win
outcome Paper Rock = Win
outcome Scissors Paper = Win
outcome x y 
    | x == y = Draw
    | otherwise = Lose

main = do
  -- テストケース1
  print $ (outcome Rock Scissors) == Win

  -- テストケース2
  print $ (outcome Paper Rock) == Win

  -- テストケース3
  print $ (outcome Scissors Paper) == Win

  -- テストケース4
  print $ (outcome Rock Rock) == Draw

  -- テストケース5
  print $ (outcome Paper Paper) == Draw

  -- テストケース6
  print $ (outcome Scissors Scissors) == Draw

  -- テストケース7
  print $ (outcome Scissors Rock) == Lose

  -- テストケース8
  print $ (outcome Rock Paper) == Lose

  -- テストケース9
  print $ (outcome Paper Scissors) == Lose