main = print . (+1) . length . takeWhile (<1000) . map (length . show) $ fib
     where fib = 1 : 1 : zipWith (+) fib (tail fib)
