main = print . length . concatMap string $ [1..1000]

string n | n > 999 = ones !! div n 1000 ++ "thousand" ++ string (mod n 1000)
         | n >  99 = ones !! div n 100 ++ "hundred" ++ suffix (mod n 100)
         | n >  19 = tens !! div n 10 ++ string (mod n 10)
         | n >   0 = ones !! n
         | otherwise = []
         where suffix 0 = []
               suffix n = "and" ++ string n
               ones = [ "", "one", "two", "three", "four", "five",
                        "six", "seven", "eight", "nine", "ten",
                        "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                        "sixteen", "seventeen", "eighteen", "nineteen" ]
               tens = [ "", "", "twenty", "thirty", "forty", "fifty",
                        "sixty", "seventy", "eighty", "ninety" ]
