import Control.Applicative

drawW :: Int -> Int -> Bool -> IO ()
drawW w n flag
  | n == w = do
      putStr "\n"
      return ()
  | flag = do
      putStr "#"
      drawW w (n + 1) (not flag)
  | not flag = do
      putStr "."
      drawW w (n + 1) (not flag)

draw :: Int -> Int -> Int -> IO ()
draw w h n
  | n == h = do
      putStr "\n"
      return ()
  | even n = do
      drawW w 0 True
      draw w h (n + 1)
  | otherwise = do
      drawW w 0 False
      draw w h (n + 1)

exec :: IO ()
exec = do
  [h, w] <- map read . words <$> getLine
  if h == 0 && w == 0
    then return ()
    else do
      draw w h 0
      exec

main = do exec
