import Control.Applicative

factors :: Int -> [Int]
factors n = [x | x <- [1 .. n], n `mod` x == 0]

main = do
  [a, b, c] <- map (read :: String -> Int) . words <$> getLine
  print $ length $ filter (\x -> a <= x && x <= b) (factors c)
