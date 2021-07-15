--Write programs in Haskell that reverses a simple list of integers using recursion; specifically, in tail recursive form. Do not use higher order functions such as
-- reverse, comprehensive lists or functions from a library.

reverse_list :: [int] -> [int]  
reverse_list l = reverse_list_helper l []  
    where
        reverse_list_helper [] t = t
        reverse_list_helper (x:xs) t = reverse_list_helper xs (x:t)

main :: IO ()
main = print (reverse_list [1,2,3,4,5,6,7,8,9,10])
