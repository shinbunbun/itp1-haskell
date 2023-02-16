import Control.Applicative

main = do
  [w, h, x, y, r] <- map read . words <$> getLine
  putStrLn $ calc w h x y r

calc :: Int -> Int -> Int -> Int -> Int -> String
calc w h x y r
  | x < r = "No"
  | y + r > h = "No"
  | x + r > w = "No"
  | y < r = "No"
  | otherwise = "Yes"
