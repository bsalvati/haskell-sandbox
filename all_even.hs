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

    allEvensWithGuard :: [Integer] -> [Integer]
    allEvensWithGuard (h:t)
        | null t && even h = [h]
        | null t  = []
    	| even h = h:allEvensWithGuard t
        | odd h = allEvensWithGuard t

    allEvensWithFilter :: [Integer] -> [Integer]
    allEvensWithFilter x = filter even x
