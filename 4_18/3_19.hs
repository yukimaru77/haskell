romanDigit :: Char -> String
romanDigit ch
  | ch == '1' = "I"
  | ch == '2' = "II"
  | ch == '3' = "III"
  | ch == '4' = "IV"
  | ch == '5' = "V"
  | ch == '6' = "VI"
  | ch == '7' = "VII"
  | ch == '8' = "VIII"
  | ch == '9' = "IX"
  | otherwise = "Roman numeral does not exist for the given your input"

main = do
  putStrLn $ show (romanDigit '1' == "I")    -- True
  putStrLn $ show (romanDigit '4' == "IV")   -- True
  putStrLn $ show (romanDigit '5' == "V")    -- True
  putStrLn $ show (romanDigit '9' == "IX")   -- True
  putStrLn $ show (romanDigit '0')    -- True
  putStrLn $ show (romanDigit 'a')    -- True   
