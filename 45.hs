main = print . head . filter (>40755) $ combine hexNums (combine triNums penNums)
    where triNums = [ div (n * (n + 1)) 2 | n <- [1..] ]
          penNums = [ div (n * (3 * n - 1)) 2 | n <- [1..] ]
          hexNums = [ n * (2 * n - 1) | n <- [1..] ]
          combine [] [] = []
          combine (a:as) (b:bs)
                  | a > b = combine (a:as) bs
                  | a < b = combine as (b:bs)
                  | otherwise = a : combine as bs
