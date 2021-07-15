-- Write a program that finds the maximum of a simple list of numbers.


maximum' :: Ord a => [a] -> a
maximum' [x] = x
maximum' (x:x':xs) = maximum' ((if x >= x' then x else x'):xs)
main :: IO ()
main = print (maximum [1,2,-23,498,53,6,75,-26,15])