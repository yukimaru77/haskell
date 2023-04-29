mult :: Int -> Int -> Int
mult x y --xがy個あるという解釈をとることとする。
  | y == 0 = 0 --0個なら0
  | y == 1 = x --1個ならx
  | y > 1 = x + mult x (y-1) --yが2個以上ならxを1個減らして再帰
  | y < 0 = -x + mult x (y+1) --yが負の数の場合は、-xがyの絶対値個あるという解釈

main = do
  putStrLn $ show $ mult 0 5 == 0
  putStrLn $ show $ mult 3 0 == 0
  putStrLn $ show $ mult 1 5 == 5
  putStrLn $ show $ mult 3 1 == 3
  putStrLn $ show $ mult 3 4 == 12
  putStrLn $ show $ mult 5 2 == 10
  putStrLn $ show $ mult (-3) 4 == (-12)
  putStrLn $ show $ mult 5 (-2) == (-10)
