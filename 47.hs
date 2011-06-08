import Data.List
main = print . head . head . f $ 4
    where f n = filter (all ((==n) . numFactors)) . map (take n) . tails $ [2..]
          numFactors = length . group . factors
          primes = 2 : [ n | n <- [3,5..], prime n ]
          prime n = all ((/= 0) . (mod n)) $ takeWhile (<=isqrt n) primes
          isqrt = floor . sqrt . fromIntegral
          factors n = f (takeWhile (<=isqrt n) primes) n
              where f [] n = [n]
                    f (p:ps) 1 = []
                    f (p:ps) n
                      | (mod n p == 0) = p : f (p:ps) (div n p)
                      | otherwise      = f ps n
