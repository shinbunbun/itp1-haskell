import Control.Applicative
import Control.Monad (when)
import Data.Array
import Data.List (sort, (\\))

main = do
  ss <- getContents
  putStr $ unlines $ ((++) <$> ["S ", "H ", "C ", "D "] <*> map show [1 .. 13] :: [String]) \\ lines ss
