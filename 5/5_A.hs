import Control.Applicative

drawW :: Int -> Int -> Int -> IO ()
drawW h w n = do
  if n == w
    then do
      putStr "\n"
      return ()
    else do
      putStr "#"
      drawW h w (n + 1)

draw :: Int -> Int -> Int -> IO ()
draw h w n =
  if n == h
    then do
      putStr "\n"
      return ()
    else do
      drawW h w 0
      draw h w (n + 1)

exec :: IO ()
exec = do
  [h, w] <- map read . words <$> getLine
  if h == 0 && w == 0
    then return ()
    else do
      draw h w 0
      exec

main = do
  exec
