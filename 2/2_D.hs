import Control.Applicative

main = do
  [w, h, x, y, r] <- map read . words <$> getLine
  putStrLn $ calc w h x y r

calc :: Int -> Int -> Int -> Int -> Int -> String
calc w h x y r
  | x < r || y + r > h || x + r > w || y < r = "No"
  | otherwise = "Yes"
