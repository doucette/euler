main = print . sum . filter doublePalindrome $ [1..999999]
doublePalindrome n = isPalindrome (show n) && isPalindrome (toBinary n)
  where isPalindrome s = s == reverse s
        toBinary 0 = []
        toBinary n = toBinary (div n 2) ++ show (mod n 2)
