import Data.List
main = print . snd . maximum . map (\g -> (length g, head g)) . group $ solutions
    where solutions = [ n | n <- [1..1000], a <- [1..n-2]
                      , let numerator = n^2 - 2*a*n
                      , let divisor = 2*(n - a)
                      , mod numerator divisor == 0
                      , let b = div numerator divisor
                      , a <= b
                      ]

-- a + b + c = n => c = n - a - b
-- a^2 + b^2 = c^2
-- a^2 + b^2 = (n - a - b)^2
-- a^2 + b^2 = n^2 + a^2 + b^2 + 2ab - 2na - 2nb
-- 0 = n^2 + 2ab - 2an - 2bn
-- 0 = n^2 + 2b(a-n) - 2an
-- b = (n^2 - 2an) / 2(n - a)
