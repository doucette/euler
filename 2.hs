main = print . sum $ [ x | x <- takeWhile (<1000000) fib, even x ]
     where fib = 1 : 1 : zipWith (+) fib (tail fib)
