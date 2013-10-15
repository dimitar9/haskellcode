import Data.Map
type PhoneNumber = String
type Name = String
type PhoneBook =[(Name,PhoneNumber)]

--inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
--inPhoneBook name pnumber pbook = (name,number) `elem` pbook

type IntMap = Map Int
{-|
data Either a b = Left2 a | Right2 b deriving (Eq,Ord,Read,Show)
-}

--infixty is like level of precedence.
-- r means right associative
infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show,Read,Eq,Ord)

main = do
    print "hello"

