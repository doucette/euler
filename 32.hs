import Data.List
main = print . sum . nub $ numbers
    where numbers = [ a * b | a <- [1..98], b <- [1..9876]
                    , (==) "123456789" . sort . concatMap show $ [a, b, a * b]
                    ]
