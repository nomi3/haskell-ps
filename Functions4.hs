area :: Float -> Float
area r = pi * rSquared
  where
    rSquared = r * r

volume :: Float -> Float
volume r = let rsq = r * r
               h = 10
           in pi * rsq * h