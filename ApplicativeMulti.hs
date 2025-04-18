add :: Int -> Int -> Int
add x y = x + y

maybeResult :: Maybe Int
maybeResult = Just add <*> Just 3 <*> Just 5

listResult :: [Int]
listResult = (add <$> [1, 2]) <*> [10, 20]

triple :: Int -> Int -> Int -> Int
triple x y z = x + y * z

maybeTriple :: Maybe Int
maybeTriple = (triple <$> Just 2) <*> Just 3 <*> Just 4