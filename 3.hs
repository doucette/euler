main = print . f 2 $ 317584931803
     where f p 1 = p
           f p n
             | (mod n p == 0) = f p (div n p)
             | otherwise      = f (p + 1) n
