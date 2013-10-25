main = do line <- fmap reverse getLine  
          putStrLn $ "You said " ++ line ++ " backwards!"  
          putStrLn $ "Yes, you really said" ++ line ++ " backwards!" 

        --  putStrLn <- fmap (replicate 3) [1,2,3,4]
