-- Write a program that returns a list containing the union of the elements of -- two given lists. Assume the list represents sets (i.e. unique elements) and -- the union returns unique elements.

union_lists :: [a] -> [a] -> [a]
union_lists xs [] = xs
union_lists [] ys = ys
union_lists (x:xs) (y:ys) = x : y : union_lists xs ys


main :: IO ()
main = print (union_lists [1,2,3,4,5,6,7,-6,15] [4,5,6,100])