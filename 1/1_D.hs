main = do
  s <- getLine
  putStrLn $ calc $ read s

calc :: Int -> String
calc s =
  show h ++ ":" ++ show m ++ ":" ++ show newS
  where
    h = div s 3600
    m = div (s - h * 3600) 60
    newS = s - h * 3600 - m * 60
