import Control.Applicative
import Text.Printf (printf)

main = do
  _n <- getLine
  a <- map (read :: String -> Int) . words <$> getLine
  printf "%d %d %d\n" (minimum a) (maximum a) (sum a)
