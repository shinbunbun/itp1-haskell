import Control.Applicative

main = do
  [a, b] <- map read . words <$> getLine
  let area = a * b
  let len = a * 2 + b * 2
  putStrLn $ show area ++ " " ++ show len
