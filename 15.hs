main = print . count $ 20
     where count n = div ((f . (*2)) n) (((^2) . f) n)
           f 0 = 1
           f n = n * f (n - 1)
