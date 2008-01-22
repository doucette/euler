main = print . length . filter ((== 0) . (flip mod 7)) $ numbers
     where numbers = scanl1 (+) $ 2 : concatMap days [1901..2000]
           days y = [31, if leap y then 29 else 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
           leap y = mod y 4 == 0 && mod y 100 /= 0 || mod y 400 == 0
