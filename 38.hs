import Data.List
main = putStrLn . maximum . filter isPandigital . concatProducts $ [2..99999]
    where isPandigital = (=="123456789") . sort
          concatProducts = filter ((==9) . length) . map concatProductGE9
          concatProductGE9 = foldl stopAt9 "" . flip map [1..7] . (show .) . (*)
              where stopAt9 p t
                            | length p < 9 = p ++ t
                            | otherwise    = p
