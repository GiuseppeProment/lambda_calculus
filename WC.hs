-- file: ch01/WC.hs

main = interact wordCount
    where wordCount input = show (words input)  ++ "\n"