import Data.Array
import Data.Ord

f n
  | even n    = div n 2
  | otherwise = 3 * n + 1

g 1 = 1
g n
  | v > 999999 = 1 + g v
  | otherwise  = 1 + c!v
  where v = f n

c = array (1,999999) ([(i,g i) | i <- [1..999999]])

cmax x y
     | comparing (c!) x y == GT = x
     | otherwise                = y

main = print . foldl1 cmax $ [1..999999]
