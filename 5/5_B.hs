import Control.Applicative

drawWFrame :: Int -> Int -> IO ()
drawWFrame w n =
  if w == n
    then do
      putStr "\n"
      return ()
    else do
      putStr "#"
      drawWFrame w (n + 1)

drawContent :: Int -> Int -> IO ()
drawContent w n
  | n == 0 || n == w - 1 = do
      putStr "#"
      drawContent w (n + 1)
  | w == n = do
      putStr "\n"
      return ()
  | otherwise = do
      putStr "."
      drawContent w (n + 1)

draw :: Int -> Int -> Int -> IO ()
draw w h n
  | n == 0 || n == h - 1 = do
      drawWFrame w 0
      draw w h (n + 1)
  | n == h = do
      putStr "\n"
      return ()
  | otherwise = do
      drawContent w 0
      draw w h (n + 1)

exec :: IO ()
exec = do
  [h, w] <- map read . words <$> getLine
  if h == 0 && w == 0
    then return ()
    else do
      draw w h 0
      exec

main = do
  exec
