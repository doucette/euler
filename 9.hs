main = print . head $ [ a * b * c
                      | b <- [1..999]
                      , a <- [1..b]
                      , let c = 1000 - a - b
                      , a^2 + b^2 == c^2
                      ]
