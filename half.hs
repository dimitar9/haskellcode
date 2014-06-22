half x = if even x
    then Just ( x `div` 2)
    else Nothing

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
					  	then x
					  	else x*2


lotsNumbers = [4,7,8,12,16,43]

boomBang xs = [if x < 10 then "BOOM!" else "BANG!" | x<-xs, odd x]

doProduct xs ys = [x*y | x <- xs, y <- ys ]

length' xs = sum[ 1 | _ <- xs ]

removeUppercase st = [c | c <-st, c `elem` ['a' .. 'z']]



getEvenElements xxs = [ [x | x <-xs, even x] | xs <- xxs]
