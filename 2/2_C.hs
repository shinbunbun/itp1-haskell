import Control.Applicative
import Data.List
import Data.Ord

main = do
  s <- map (read :: String -> Int) . words <$> getLine
  putStrLn $ unwords $ map show $ sort s
