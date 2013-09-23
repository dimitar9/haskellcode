import Text.Printf
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

main = do
	putStrLn (charName 'a')

	print a
	print (third (1,2,3))

	print (head' [4,5,6])

	print (tell [1,2,3,4,5])

	
	--printf  "the length of this list is %d"  (length' [1,2,3,4,5])
	printf "the length of this list is %d\n" ((length' [1, 2, 3, 4]) :: Integer) --      ::Integer  is important, this will cat type to Integer , avoid type ambiguity.