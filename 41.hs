import Data.Char
import Data.List
main = print . head . filter pandigital . filter prime $ [7654321,7654320..]
    where pandigital n = (==c) . sort $ s
              where c = map intToDigit [1..length s]
                    s = show n

primes = 2 : [ n | n <- [3,5..], prime n ]
prime n = all ((/= 0) . (mod n)) $ takeWhile (<=isqrt n) primes
    where isqrt = floor . sqrt . fromIntegral
