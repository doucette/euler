import Data.List
main = print . perm "0123456789" $ 999999
     where perm [] _ = []
           perm xs n = x : perm (delete x xs) (mod n p)
                where p = f . (subtract 1) . length $ xs
                      x = xs !! (div n p)
                      f 0 = 1
                      f n = n * f (n - 1)
