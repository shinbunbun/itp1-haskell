import Control.Applicative

main = do
  _n <- getLine
  a <- map (read :: String -> Int) . words <$> getLine
  putStrLn $ unwords $ map show $ reverse a
