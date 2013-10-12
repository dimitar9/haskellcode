data Person = Person {
                        firstname::String
                    ,   lastName :: String
                    ,   age :: Int
                    ,   height :: Float
                    ,   phoneNumber :: String
                    ,   flavor :: String
}deriving(Show)

    
    
guy = Person "Buddy" "Finklestein" 43 184.2 "526-1234" "Vanilla"

    
data Maybe a = Nothing | Just a
    
    
    
    
    
    
main = do
    print (guy)
    print (firstname guy)
    print (flavor guy)
    



    
