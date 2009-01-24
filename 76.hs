main = print . (+(-1)) . sum . head $ iterate count [] !! 100
    where count x = (:x) . (++[1]) . map sum $ zipWith drop [0..] x
