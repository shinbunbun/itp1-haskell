import Control.Applicative
import Text.Printf (printf)

main = do
  [a, b] <- map (read :: String -> Int) . words <$> getLine
  let d = a `div` b
  let r = a `mod` b
  let f = (fromIntegral a / fromIntegral b) :: Double
  printf "%d %d %.12f\n" d r f
