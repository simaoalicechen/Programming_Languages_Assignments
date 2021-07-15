-- Write a program that succeeds if the intersection of two given list parameters is empty.

empty_intersection :: (Eq a) => [a] -> [a] -> Bool
empty_intersection as bs = null [x | x <- as, x `elem` bs]

--main :: IO ()
--main = print (empty_intersection [1,2,3,4,5,6,7,-6,15] [1,2])

main :: IO ()
main = print (empty_intersection [1,2,3,4,5,6,7,-6,15] [0])