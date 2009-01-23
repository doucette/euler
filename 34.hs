import Data.Char
main = print . sum . filter factsum $ [3..100000]
    where factsum n = (==n) . sum . map (factorial . digitToInt) . show $ n
          factorial = ((map factorial' [0..]) !!)
              where factorial' 0 = 1
                    factorial' n = n * factorial (n - 1)
