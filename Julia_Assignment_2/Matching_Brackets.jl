#= Given a string containing brackets [], braces {}, parentheses (), or any combination thereof, verify that any and all pairs are matched and nested correctly.
=#

function filter_brackets(s)
    final = filter(c -> c in ['[',']','(',')', '{','}'], s)
    return final
  end
  
  function matching_brackets(s)
    final = filter_brackets(s)
  
    while length(final) != 0
     
        l = replace(final, r"\(\)|\[\]|\{\}"=>"")
    
        (l == final) && return false
    
        final = l
    end
  
    return true
  end