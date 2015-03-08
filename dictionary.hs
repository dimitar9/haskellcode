import Data.List
import Data.Char
import Data.Maybe



phoneBook = 
 	[("betty", "555-2928")
 	,("bonny", "092-1029")
 	,("pasty", "493-9202")
 	]

findKey :: (Eq k) => k ->  [(k,v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs) 
	 | key == k = Just v
	 | otherwise = findKey key xs

main :: IO()
main = do
	putStrLn "hello"

	putStrLn (show (fromMaybe "Not Found" (findKey "penny" phoneBook)))
	putStrLn (show (fromMaybe "Not Found" (findKey "bonny" phoneBook)))



