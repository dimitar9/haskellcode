data Person = Person String String Int Float String String deriving (Show)
guy = Person "Buddy" "Finklestein" 43 184.2 "526-1234" "Vanilla"
main = do
    print (guy)
