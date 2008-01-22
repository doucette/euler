import Data.List
main = print . head . filter ((>500) . divisors) $ scanl1 (+) [1..]
     where divisors = product . map ((+1) . length) . group . factors
           factors = f 2
                   where f p 1 = []
                         f p n
                           | (mod n p == 0) = p : f p (div n p)
                           | otherwise      = f (p + 1) n
