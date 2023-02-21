import Control.Applicative
import Text.Printf (printf)

main = do
  r <- (read :: String -> Double) <$> getLine
  printf "%.12f %.12f\n" (r ^ 2 * pi) (2 * r * pi)
