describeNumber :: Int -> String
describeNumber 0 = "Zero!"
describeNumber 1 = "One!"
describeNumber n = "Something else: " ++ show n

describeList :: [a] -> String
describeList [] = "Empty list!"
describeList [x] = "One element!"
describeList (x:y:_) = "Multiple elements!"