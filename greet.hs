import Data.Char (toUpper, toLower)

greetLoudly :: String -> String
greetLoudly name = "HELLO, " ++ map toUpper name ++ "!"

isPalindrome :: String -> Bool
isPalindrome name = name == reverse name

formatName :: String -> String
formatName (x:xs) = toUpper x : map toLower xs
formatName [] = ""

main :: IO ()
main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn (greetLoudly name)
    putStrLn (show (isPalindrome name))
    putStrLn (formatName name)