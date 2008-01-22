main = print . sum . takeWhile (< 1000000) $ primes
     where primes = 2 : [ n | n <- [3,5..], prime n ]
           prime n = all ((/= 0) . (mod n)) $ takeWhile (<=isqrt n) primes
           isqrt = floor . sqrt . fromIntegral
