main = print . head . filter (\n -> let x = n^2 in
                                    digit 18 x == 1 &&
                                    digit 16 x == 2 &&
                                    digit 14 x == 3 &&
                                    digit 12 x == 4) $ process 8
    where process 0 = [30, 70]
          process n = options n $ process (n - 2)
          options n set = concat (map values set)
              where values x = filter valid . map ((+ x) . (* (10^n))) $ [0..99]
                    valid y = digit (n + 2) ((^2) y) == 9 - (div n 2) &&
                              ((^2) y) < 1929394959697989990
          digit n x = mod (div x (10^n)) 10
