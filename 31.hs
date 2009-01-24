main = print . length . options (length coins) $ 200
   where coins = [1, 2, 5, 10, 20, 50, 100, 200]
         options 1 c = [[c]]
         options n c = concatMap add [0..div c $ coins!!(n - 1)]
            where add i = map (++[i]) $ options (n - 1) $ c - i * coins!!(n - 1)
