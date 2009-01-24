main = print . length . filter lychrel $ [1..9999]
    where palinsum n = (read . reverse . show) n + n
          palindrome n = let s = show n in s == reverse s
          lychrel = not . any palindrome . take 50 . tail . iterate palinsum
