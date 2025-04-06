data Color = Red | Green | Blue

paint :: Color -> String
paint Red = "Stop"
paint Green = "Go"
paint Blue = "Cool"

data Result = Success Int | Failure String

handle :: Result -> String
handle (Success x) = "Yay: " ++ show x
handle (Failure msg) = "Oops: " ++ msg

data User = User { name :: String, age :: Int }

data Box a = Box a

unbox :: Box a -> a
unbox (Box x) = x

data List a = Nil | Cons a (List a)

sumList :: List Int -> Int
sumList Nil = 0
sumList (Cons x xs) = x + sumList xs

data One a = One a