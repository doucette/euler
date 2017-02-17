import Data.Ratio
main = print . denominator . product $ [ (n % d) | n1 <- [1..9], n2d1 <- [1..9]
                                       , d2 <- [1..9]
                                       , let n = n1 * 10 + n2d1
                                       , let d = n2d1 * 10 + d2
                                       , n < d
                                       , n1 % d2 == n % d
                                       ]
