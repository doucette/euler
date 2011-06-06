import Data.List
main = print . head . filter isValid $ [1..]
    where isValid = allEqual . map (sort . show) . zipWith (*) [1..6] . repeat
          allEqual (x:xs) = all (==x) xs
