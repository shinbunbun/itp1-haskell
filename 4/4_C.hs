import Control.Applicative

exec :: IO ()
exec = do
  [a, op, b] <- words <$> getLine
  let intA = (read :: String -> Int) a
  let intB = (read :: String -> Int) b
  if op == "?"
    then return ()
    else do
      print
        ( case op of
            "+" -> intA + intB
            "-" -> intA - intB
            "*" -> intA * intB
            "/" -> intA `div` intB
        )
      exec

main = do
  exec
