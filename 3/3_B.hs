import Control.Applicative
import Control.Monad (when)

main = do
  exec 1

exec :: Int -> IO ()
exec n = do
  x <- read <$> getLine
  if x == 0
    then return ()
    else do
      putStrLn ("Case " ++ show n ++ ": " ++ show x)
      exec (n + 1)
