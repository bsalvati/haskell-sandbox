module Main where

    let colors = ["black", "white", "blue", "yellow", "red"]
    --combo :: (String, String) -> (String, String)
    combo
         [ (a, b) | a <- colors, b <- colors, a/=b, a<b ]
    

