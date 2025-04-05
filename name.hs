-- getLine :: IO String
-- putStrLn :: String -> IO ()

main :: IO ()
main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Hello, " ++ name ++ "!")