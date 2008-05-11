import Data.List
import Monad
main = print . sum . filter (\n -> n /= d n && n == (d . d) n) $ [2..9999]
     where d = sum . nub . sort . tail . map product . powerset . factors
           powerset = filterM (const [ True, False ])
           factors = f 2
                   where f p 1 = []
                         f p n
                           | (mod n p == 0) = p : f p (div n p)
                           | otherwise      = f (p + 1) n
