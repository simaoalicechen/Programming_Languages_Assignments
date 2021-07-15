## Second way to test, using Testset

using Test

include("Matching_Brackets.jl")
@testset "A pair of brackets" begin
@test matching_brackets("[]")
@test matching_brackets("()[]{}")
@test !matching_brackets("}{")
@test !matching_brackets("){")
@test !matching_brackets("(]")
end

@testset "3 or more brackets" begin
@test matching_brackets("{}[]")
@test matching_brackets("{()}")
@test matching_brackets("([{}({}[])])")
@test !matching_brackets("{}[))){")
@test !matching_brackets("{[[[)))]]}")
end


@testset "Non-brackets" begin
@test matching_brackets("")
@test matching_brackets("#Other#\\Characters\\\\##")
@test matching_brackets("8*(((100+100) * 20) - 100)/(1+2)")
@test !matching_brackets("125*(((100+100) * 20) - 100))/1")
end