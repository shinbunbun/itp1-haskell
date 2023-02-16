import Control.Applicative

main = do
  [a, b, c] <- map read . words <$> getLine
  putStrLn $ exec a b c

exec :: Int -> Int -> Int -> String
exec a b c
  | a < b && b < c = "Yes"
  | otherwise = "No"
