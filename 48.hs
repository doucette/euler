main = print . flip mod (10^10) . sum $ [ n^n | n <- [1..1000] ]
