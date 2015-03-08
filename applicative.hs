import Control.Applicative 
import Control.Monad
import Data.Maybe

half x = if even x
			then Just (x `div` 2)
			else Nothing

main :: IO()
main = do
     putStrLn (show (fromJust (Just (+ 3) <*> Just 2)))


