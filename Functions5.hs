maybeExample1 :: Maybe Integer
maybeExample1 = fmap (+1) (Just 10)
maybeExample2 :: Maybe Integer
maybeExample2 = fmap (+1) Nothing

listExample :: [Integer]
listExample = fmap (*2) [1, 2, 3]

newtype Box a = Box a deriving (Show)
instance Functor Box where
  fmap :: (a -> b) -> Box a -> Box b
  fmap f (Box x) = Box (f x)

boxExample :: Box [Char]
boxExample = fmap reverse (Box "haskell")

boxExample2 :: Box Integer
boxExample2 = fmap (*2) (Box 10)

