import Control.Applicative

main = do
  [w, h, x, y, r] <- map read . words <$> getLine
  putStrLn $ if x < r || y + r > h || x + r > w || y < r then "No" else "Yes"
