import Data.Char
main = print . sum . filter check $ [10..250000]
    where check n = (==n) . sum . map ((^5) . digitToInt) . show $ n
