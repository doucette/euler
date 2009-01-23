main = print . compute . (flip div 2) $ 1001
    where compute n = (+1) . (*4) . (+n) . sum . take n $ values
          values = zipWith (+) (scanl1 (+) $ [0,8..]) [5,10..]
