#= 
Write	a	Julia program	to	find	all	pairs	of	numbers	in	a	given	list	which	add	up	to	a	given	sum
eg.	if	list	=	(1,3,8,12,7,11,9,4,2,10,5)
and	sum =	12
pair: (1,11),	(2,10),	(3,9),	(4,8)
Input:	a	list	of	numbers	and	a	sum
Output:	The	list	of	pairs	with	the	respective	sum
=#


function twosum(v::Vector, s::Real)
    results = []
    for i in 1:length(v)
        for j in i+1:length(v)
            if v[i] + v[j] == s
                push!(results, (v[i], v[j]))
            end
        end
    end
    println(results)
end

arr = [1, 16, 7, 22, 21, 2,25, -2]
twosum(arr, 23)