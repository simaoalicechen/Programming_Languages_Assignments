-- Write a program that returns the final element of a list

lastElement :: [a] -> a
lastElement [] = error "This is an empty list" -- Error message
lastElement [x] = x
lastElement (x:xs) = lastElement xs


main :: IO ()
main = print (lastElement [1,2,3,4,5,6,7,-6,15])