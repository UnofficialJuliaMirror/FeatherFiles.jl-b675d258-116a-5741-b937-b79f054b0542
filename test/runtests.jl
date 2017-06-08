using FileIO
using FeatherFiles
using IterableTables
using DataFrames
using Base.Test

@testset "FeatherFiles" begin

df = DataFrame(Name=["John", "Sally", "Jim"], Age=[34.,54.,23],Children=[2,1,0])

output_filename = tempname() * ".feather"

df |> save(output_filename)

df2 = load(output_filename) |> DataFrame

@test df == df2

end
