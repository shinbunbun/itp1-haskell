import Control.Applicative

main = do
  [a, b] <- map read . words <$> getLine
  putStrLn $ exec a b

exec :: Int -> Int -> String
exec a b
  | a < b = "a < b"
  | a == b = "a == b"
  | otherwise = "a > b"
