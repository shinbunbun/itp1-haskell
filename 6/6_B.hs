import Control.Applicative
import Control.Monad (when)
import Data.Array
import Data.List (sort, (\\))

main = do
  _n <- getLine
  ss <- getContents
  let res = unlines (((++) <$> ["S ", "H ", "C ", "D "] <*> map show [1 .. 13] :: [String]) \\ lines ss)
  when (res /= "") $ putStrLn $ init res
