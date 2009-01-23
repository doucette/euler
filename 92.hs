import Data.Char
main = print . length . filter ((==89) . cycle) $ [1..9999999]
    where cycle n
              | n > 1000  = cycle . cycle' $ n
              | otherwise = ((map cycle' [0..]) !!) n
              where cycle' 1 = 1
                    cycle' 89 = 89
                    cycle' n = sum . map ((^2) . digitToInt) . show $ n
