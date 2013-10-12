--Type class. for example. Int type is instance of Eq type.
--think type as Interface, rather than class in C++ and Java.
-- Typeclasses: Eq, Ord, Enum, Bounded, Show, Read.

data Person = Person { firstName :: String
                      ,lastName  :: String
                      ,age :: Int
} deriving (Eq,Show,Read)

mikeD = Person {firstName = "Michael", lastName = "Diamond" , age = 43}
adRock = Person {firstName = "Adam", lastName = "Horovitz" , age = 41}
mca = Person {firstName="Adam",lastName ="Yauch",age =44}
    
beastieBoys = [mca,adRock,mikeD]    


data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
    deriving (Eq, Ord,Show,Read,Bounded,Enum)
    
main = do
    print (mikeD == adRock)
    print (mikeD `elem` beastieBoys)
    print mikeD
