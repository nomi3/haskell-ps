import Control.Monad (join)

------------------------------------------------------------
-- 3 重 Maybe のサンプル値
--
--   T₁ : Just …
--   T₂ :       Just …
--   T₃ :             Just 42
--
--   型は  Maybe (Maybe (Maybe Int))
------------------------------------------------------------
x :: Maybe (Maybe (Maybe Int))
x = Just (Just (Just 42))

------------------------------------------------------------
-- μ ∘ Tμ   ==   join . fmap join
--
-- ・外側 (T₁) はそのまま残し、
-- ・内側 2 段 (T₂ + T₃) を join で 1 段に畳む
--
-- 結果の型は  Maybe (Maybe Int)  ―― まだ 2 層
------------------------------------------------------------
flattenT2T3 :: Maybe (Maybe Int)
flattenT2T3 = fmap join x


------------------------------------------------------------
-- μ ∘ μT   ==   join . join
--
-- 1. 最初の join で外側 T₁ を取り除き、T₂ + T₃ の 2 段構造へ
-- 2. もう一度 join でその 2 段 (T₂ + T₃) を 1 段に
--
-- 結果の型は  Maybe Int  ―― 完全にフラット
------------------------------------------------------------
flattenAll :: Maybe Int
flattenAll = join (join x)


------------------------------------------------------------
-- 2 層 (Maybe (Maybe a)) の構造を見やすく文字列化する補助
------------------------------------------------------------
showLayer :: Show a => Maybe (Maybe a) -> String
showLayer (Just (Just v)) = "Just (Just " ++ show v ++ ")"
showLayer (Just Nothing)  = "Just Nothing"
showLayer Nothing         = "Nothing"


------------------------------------------------------------
-- 実行して挙動を確認
------------------------------------------------------------
main :: IO ()
main = do
  putStrLn "Original 3-layer value:"
  print x                            -- => Just (Just (Just 42))

  putStrLn "\nμ ∘ Tμ   (fmap join)  — flatten T₂ + T₃"
  print flattenT2T3                  -- => Just (Just 42)
  putStrLn $ "As layers: " ++ showLayer flattenT2T3

  putStrLn "\nμ ∘ μT   (join . join) — flatten T₁, then T₂ + T₃"
  print flattenAll                   -- => Just 42