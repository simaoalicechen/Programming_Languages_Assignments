#= 
Two ways to test, you can either test different cases using the function,
or “using Test” to test sets of functions. I tried both and the screenshots
show both methods.
=#
# Method 1 Test cases:


matching_brackets("[]")
matching_brackets("[ ]")
matching_brackets("[[")
matching_brackets("}{")

matching_brackets("{]")
matching_brackets("][]")
matching_brackets("]{}")
matching_brackets("[]{}")
matching_brackets("{[])")
matching_brackets("{[]}")

matching_brackets("([{}({}[])])")
matching_brackets("{[)][]}")
matching_brackets("([{])")
matching_brackets("[({]})")
matching_brackets("")
matching_brackets("(((100+100) * 20) - 100)/(1+2)")
matching_brackets("(((100+100) * 20) - 100))/1")
matching_brackets("#Other#\\Characters\\\\##")