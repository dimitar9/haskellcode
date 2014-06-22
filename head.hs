head' :: [a] -> a
head' [] = error "Cannot call head on emply list."
head' (x:_) = x

main = do 
    putStrLn  "hello"
    let ret = head' [4,5,6]
    print ret
