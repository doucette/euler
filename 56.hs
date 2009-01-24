import Data.Char
main = print . maximum . map (sum . digits) $ values
    where digits = map digitToInt . show
          values = [ a^b | a <- [1..100], b <- [1..100] ]
