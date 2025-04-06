data API f = API
  { getUser    :: f Int String
  , createUser :: f String Bool
  }

apiImpl :: API (->)
apiImpl = API
  { getUser = \uid -> "User" ++ show uid
  , createUser = \name -> name == "admin"
  }