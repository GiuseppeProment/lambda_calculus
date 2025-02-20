-- add two numbers
add a b = a + b
-- curried version
addCurr a = \b -> a + b

-- drop version
myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n - 1) (tail xs)

-- lazy evaluation
isOdd n = mod n 2 == 1

