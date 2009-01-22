import Data.List
import Numeric
main = putStrLn $ showFFloat (Just 7) probability ""
     where sixSix = countRolls [ a + b + c + d + e + f
                               | a <- [1..6]
                               , b <- [1..6]
                               , c <- [1..6]
                               , d <- [1..6]
                               , e <- [1..6]
                               , f <- [1..6]
                               ]
           nineFour = countRolls [ a + b + c + d + e + f + g + h + i
                                 | a <- [1..4]
                                 , b <- [1..4]
                                 , c <- [1..4]
                                 , d <- [1..4]
                                 , e <- [1..4]
                                 , f <- [1..4]
                                 , g <- [1..4]
                                 , h <- [1..4]
                                 , i <- [1..4]
                                 ]
           countRolls = map ((+(-1)) . length) . group . sort . (++) [1..36]
           sixSixSum = [0] ++ (scanl1 (+) sixSix)
           products = zipWith (*) nineFour sixSixSum
           probability = (/ (6^6 * 4^9)) . sum . map fromIntegral $ products
