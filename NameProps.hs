import Data.Char (toUpper, toLower)

main :: IO ()
main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Hello, " ++ name ++ "!")
    let reversed = reverse name
    putStrLn ("Reversed: " ++ reversed)
    let len = length name
    putStrLn ("Length: " ++ show len)
    let upper = map toUpper name
    putStrLn ("Upper: " ++ upper)
    let lower = map toLower name
    putStrLn ("Lower: " ++ lower)

