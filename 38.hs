import Data.List
main = putStrLn . maxPandigital . concatMap filteredProducts $ [2..99999]
    where filteredProducts = take9 . concatProducts
              where take9 = filter ((==9) . length) . takeWhile ((<=9) . length)
                    concatProducts n = scanl (\cp i -> cp ++ show (i*n)) [] [1..]
          maxPandigital = maximum . filter isPandigital
              where isPandigital = (=="123456789") . sort
