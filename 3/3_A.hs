main = do
  helloWorld 0

helloWorld :: Int -> IO ()
helloWorld 1000 = return ()
helloWorld n = do
  putStrLn "Hello World"
  helloWorld (n + 1)
