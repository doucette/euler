import Data.List
main = print . snd . maximum $ [ (cycle n, n) | n <- [3,5..999], rem n 5 > 0 ]
    where cycle = length . show . head . value
          value n = map (flip div n) . filter ((==0) . (flip rem n)) $ nines
          nines = iterate ((9+) . (10*)) $ 9
