maybeFunc :: Maybe (Int -> Int)
maybeFunc = Just (*3)

maybeVal :: Maybe Int
maybeVal = Just 10

maybeResult :: Maybe Int
maybeResult = maybeFunc <*> maybeVal

maybePure :: Maybe Int
maybePure = pure 7