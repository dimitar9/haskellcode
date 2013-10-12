--Type class. for example. Int type is instance of Eq type.
--think type as Interface, rather than class in C++ and Java.
-- Typeclasses: Eq, Ord, Enum, Bounded, Show, Read.

data Person = Person { firstName :: String
                      ,lastName  :: String
                      ,age :: Int
} deriving (Eq)

mikeD = Person {firstName = "Michael", lastName = "Diamond" , age = 43}
adRock = Person {firstName = "Adam", lastName = "Horovitz" , age = 41}
main = do
    print (mikeD == adRock)
