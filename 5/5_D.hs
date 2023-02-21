import Control.Applicative
import Control.Monad (when)
import Text.Printf (printf)

call :: Int -> IO ()
call n = do
  let i = 1
  checkNum n i

checkNum n i = do
  let x = i
  if x `mod` 3 == 0
    then do
      printf " %d" i
      endCheckNum n i
    else include3 x n i

include3 :: Int -> Int -> Int -> IO ()
include3 x n i = do
  if x `mod` 10 == 3
    then do
      printf " %d" i
      endCheckNum n i
    else do
      let newX = x `div` 10
      if newX /= 0
        then include3 newX n i
        else endCheckNum n i

endCheckNum n i = do
  let newI = i + 1
  if newI <= n
    then checkNum n newI
    else do
      putStr "\n"
      return ()

main = do
  n <- read <$> getLine
  call n
