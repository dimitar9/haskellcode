fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

euler2 :: Integer -> Integer
euler2 n = sum $ filter even $ takeWhile (< n) fibs

main :: IO()
main =
     putStrLn $ show $  (take 100 fibs)