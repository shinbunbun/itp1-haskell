import Control.Applicative
import Data.List

exec :: IO ()
exec = do
  [x, y] <- map (read :: String -> Int) . words <$> getLine
  if x == 0 && y == 0
    then return ()
    else do
      let arr = sort [x, y]
      putStrLn $ unwords $ map show arr
      exec

main = do
  exec
