import Data.List
import Data.Char

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any (needle `isPrefixOf` ) (tails haystack)


encode :: Int -> String -> String
encode offset msg = map (\c -> chr $ ord c + offset) msg

decode :: Int -> String -> String
decode shift msg = encode (negate shift) msg

phoneBook = 
 	[("betty", "555-2928")
 	,("bonny", "092-1029")
 	]

main :: IO()
main = do
     if "arts" `isIn` "artsisgood" 
     	then  putStrLn "is in"
     	else putStrLn "not in"

     putStrLn  ("encoded hey is " ++ (encode 3 "hey"))



