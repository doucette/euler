main = print . length . filter circular . takeWhile (<1000000) $ primes
    where circular = all prime . rotations
          rotations n = map read . take (length s) . iterate rotate $ s
              where rotate s = tail s ++ [head s]
                    s = show n

primes = 2 : [ n | n <- [3,5..], prime n ]
prime n = all ((/= 0) . (mod n)) $ takeWhile (<=isqrt n) primes
    where isqrt = floor . sqrt . fromIntegral
