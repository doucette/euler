import Data.List
main = print . head . filter (pandigital . fibHigh9) $ [ k
                                                       | (k,n) <- zip [1..] fib9
                                                       , pandigital n
                                                       ]
    where fib9 = 1 : 1 : (map (`mod` 10^9) $ zipWith (+) fib9 (tail fib9))
          fibHigh9 = round . ((iterate (scale9 . (*phi)) (1 / sqrt 5)) !!)
              where scale9 n
                        | n < 10^9  = n
                        | otherwise = n / 10
          pandigital = (=="123456789") . sort . show
          phi = (1 + sqrt 5) / 2
