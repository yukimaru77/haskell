threeDifferent :: Integer -> Integer -> Integer -> Bool
threeDifferent m n p = m /= n && n /= p && p /= m

-- threeDifferent 3 4 3の出力はFalseとなる。
-- 理由:
-- 関数の定義から、まず第一引数と第二引数の数字が異なるか評価される。
-- これは異なるのでTrueとなる。その後に続く演算子は&&である。
-- 直前の演算結果がTrueなので、評価処理は継続される。
-- 次に第二引数と第三引数が異なるか評価される。
-- この結果はTrueとなり、後ろに続く演算子は&&なので同様に継続される。
-- 最後は第三引数と第一引数が異なるか評価される。
-- この結果はFalseとなり、全体として結果はFalseとなる。
-- この三つ評価結果が真の場合、つまりそれぞれが互いに異なる
-- 数字の場合にTrueを返す。

-- テストケース
main = do
  print $ threeDifferent 1 2 3 -- True
  print $ threeDifferent 1 1 3 -- False
  print $ threeDifferent 1 3 1 -- False
  print $ threeDifferent 2 2 3 -- False
  print $ threeDifferent 1 1 1 -- False
  print $ threeDifferent 1 1 1 -- False
  print $ threeDifferent 1 3 1 -- False
  print $ threeDifferent 2 2 2 -- False
  print $ threeDifferent 1 2 1 -- False