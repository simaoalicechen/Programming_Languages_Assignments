--Write	a	program	to	find	all	pairs	of	numbers	in	a	given	list	--which	add	up	to	a	given	sum
--eg.	if	list	=	(1,3,8,12,7,11,9,4,2,10,5) and	sum =	12
--pair: (1,11),	(2,10),	(3,9),	(4,8)
--Input:	a	list	of	numbers	and	a	sum
--Output:	The	list	of	pairs	with	the	respective	sum
--Extend	your	program	to	include	all	possible	sums
--eg.	Sums	=	5,	6,	7,	8,	…,	23
--Input:	A	list	of	numbers
--Output:	a	list	of	tuples	where	each	tuple	is	the	sum	--followed	by	the	list	of	pairs.


import Data.List (sort)
import Data.Sequence (Seq (..), fromList)

sums :: (Num a, Ord a) => [a] -> a -> [(a,a)]
sums xs s = go sorted
  where
    sorted = fromList (sort xs)
    go Empty = []
    go (_ :<| Empty) = []
    go (a :<| asb@(as :|> b)) = case compare (a + b) s of
      EQ -> (a,b) : go as
      LT -> go asb
      GT -> go (a :<| as)
 
main :: IO ()
main = print (sums [1,2,3,4,5,6,7,-6,15] 9)



  