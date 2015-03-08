import Control.Applicative 
import Control.Monad
import Data.Maybe

main :: IO()
main = do
     putStrLn  (show (fromJust (Just (+ 3) <*> Just 2)))



