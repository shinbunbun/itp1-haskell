main = do
  x <- getLine
  let intX = read x :: Int
  print $ intX ^ 3
