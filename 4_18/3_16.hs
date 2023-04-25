-- 小文字を大文字に変換する
offset :: Int
offset = fromEnum 'A' - fromEnum 'a'

toUpper :: Char -> Char
toUpper s
  | fromEnum s <= fromEnum 'Z' = s
  | otherwise = toEnum (fromEnum s + offset)

main = do
  -- toUpper 関数のテストケース
  putStrLn "--- Testing toUpper function ---"
  putStrLn $ show (toUpper 'a' == 'A') -- True
  putStrLn $ show (toUpper 'A' == 'A') -- True
  putStrLn $ show (toUpper 'z' == 'Z') -- True
  putStrLn $ show (toUpper 'Z' == 'Z') -- True
  putStrLn $ show (toUpper '1' == '1') -- True

