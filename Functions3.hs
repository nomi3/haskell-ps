describeSign :: Int -> String
describeSign n
  | n < 0     = "Negative"
  | n == 0    = "Zero"
  | otherwise = "Positive"

describeLength :: String -> String
describeLength s
  | len == 0  = "Empty string"
  | len == 1  = "Very short string"
  | len < 5   = "Short string"
  | otherwise = "Long string"
  where len = length s