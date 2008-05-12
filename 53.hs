import Array

main = print . length . filter (>10^6) $ [ c n k | n <- [1..100], k <- [0..n] ]

c n k
  | n == k || k == 0 = 1
  | otherwise        = t ! (n - 1, k) + t ! (n - 1, k - 1)

t = array ((0,0),(100,100)) ([((n,k),c n k) | n <- [0..100], k <- [0..100]])
