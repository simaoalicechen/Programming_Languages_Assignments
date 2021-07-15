#= 
Write	a	Julia program	to	find	all	pairs	of	numbers	in	a	given	list	which	add	up	to	a	given	sum
eg.	if	list	=	(1,3,8,12,7,11,9,4,2,10,5)
and	sum =	12
pair: (1,11),	(2,10),	(3,9),	(4,8)
Input:	a	list	of	numbers	and	a	sum
Output:	The	list	of	pairs	with	the	respective	sum
=#


function twosum(v::Vector, s::Vector)
    results = Dict{Integer, Any}
    for m in 1:length(s)
        for i in 1:length(v)
            for j in i+1:length(v)
                if v[i] + v[j] == s[m]
                    results = Dict{Integer, Any}(s[m] => (v[i], v[j]))
                    for (key, value) in results
                        print(key); print(value)
                    end
                end
            end
        end
    end
end

arr = [0,11,10,15,19,2]
sum = [11, 21]
twosum(arr, sum)