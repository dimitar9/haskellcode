import Text.Printf
import Data.List
import Data.Char
import qualified Data.Map as Map
import qualified Data.Set as Set
charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"


third :: (a, b, c) -> c
third (_,_,z) = z
a = (fst (1,2))


head' :: [a] -> a
head' [] = error "Cannot  call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y 

length' :: (Num b) => [a] ->  b
length' [] = 0
length' (_:xs) = 1 + length' xs

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs) 
	| x > maxTail = x
	| otherwise = maxTail
	where maxTail = maximum' xs 


map_my:: (a -> b) -> [a] -> [b]
map_my _[] = []
map_my f (x:xs) = f x : map_my f xs

mfilter :: (a -> Bool) -> [a] -> [a]
mfilter _[] = []
mfilter p (x:xs)
	| p x = x: mfilter p xs
	| otherwise = mfilter p xs



quicksort2 :: (Ord a) => [a] -> [a]    
quicksort2 [] = []    
quicksort2 (x:xs) =     
    let smallerSorted = quicksort2 (filter (<=x) xs)  
        biggerSorted = quicksort2 (filter (>x) xs)   
    in  smallerSorted ++ [x] ++ biggerSorted  

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [1000000, 99999..])
	where p x = x `mod` 3829 == 0
    
chain :: (Integral a) => a -> [a]  
chain 1 = [1]  
chain n  
    | even n =  n:chain (n `div` 2)  
    | odd n  =  n:chain (n*3 + 1)  

numLongChains :: Int  
numLongChains = length (filter isLong (map chain [1..100]))  
    where isLong xs = length xs > 15  


data Shape = Circle Float Float Float deriving (Show)

main = do
	print (numLongChains )
	print (largestDivisible )
	print (quicksort2 [1,3,42,1,224,12,2,3,4,5,6,7])
	putStrLn (charName 'a')

	print a
	print (third (1,2,3))

	print (head' [4,5,6])

	print (tell [1,2,3,4,5])

	
	--printf  "the length of this list is %d"  (length' [1,2,3,4,5])
	printf "the length of this list is %d\n" ((length' [1, 2, 3, 4]) :: Integer) --      ::Integer  is important, this will cat type to Integer , avoid type ambiguity.
	print (maximum' [1,2,3,4,5])
	print (map_my (+3) [1,5,3,1,6])


	print (intersperse '.' "Monkey")
	print (intersperse 0 [1,2,3,4,5,6,7])

	print (map_my (replicate 3) [3..6] )

	print (mfilter even [1..10])
	print (inits "w00t")
   
    
