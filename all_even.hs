module Main where 

    allEven :: [Integer] -> [Integer]
    allEven [] = []
    allEven (h:t) = if even h then h:allEven t else allEven t

    isEven :: Integer -> Bool
    isEven x = even x

    myEvens :: [Integer] -> [Integer]
    myEvens [] = []
    myEvens (h:t) =  if isEven h then h:myEvens t else myEvens t


    allEvensWithComprehension :: [Integer] -> [Integer]
    allEvensWithComprehension (x)  = [ a | a <-  x, even a]               	 
