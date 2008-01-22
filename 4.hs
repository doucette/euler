main = print . maximum . palindromes $ (100,999)
     where palindromes (a,b) = [ x * y | x <- [a..b], y <- [x..b], p (x * y) ]
           p n = s == reverse s
             where s = show n
