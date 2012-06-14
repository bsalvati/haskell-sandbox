module Main where

    reverseList [x,y] = [y,x]
    reverseList (h:t) = reverseList(t) ++ [h]
    
   


        
   
