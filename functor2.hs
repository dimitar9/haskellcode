main = do line <- fmap reverse getLine  
          putStrLn $ "You said " ++ line ++ " backwards!"  
          putStrLn $ "Yes, you really said" ++ line ++ " backwards!" 

          putStrLn $ show $ fmap (replicate 3) [1,2,3,4]

          print  $ fmap (replicate 3) [1,2,3,4]
        --
        --  Functors law 
        --  1. fmap id = id
