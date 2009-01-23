import Data.List
main = print . fst . maximumBy select $ possible
    where select (_, x) (_, y) = compare x y
          possible = [ (a * b, l)
                     | b <- takeWhile (<1000) primes
                     , a <- [-b + 1..999]
                     , if b == 2 then even a else odd a
                     , let l = length . takeWhile (prime . (f a b)) $ [0..]
                     ]
              where f a b n = n^2 + a * n + b

primes = 2 : [ n | n <- [3,5..], prime n ]
prime n = n > 0 && (all ((/= 0) . (mod n)) $ takeWhile (<=isqrt n) primes)
    where isqrt = floor . sqrt . fromIntegral
