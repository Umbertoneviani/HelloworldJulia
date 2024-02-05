module HelloworldJulia

using Revise

include(joinpath("functions", "Esempio1.jl"))
include(joinpath("functions", "HelloworldFile.jl")


using .Esempio1.jl
using .HelloworldFile.jl
using Revise

H= hello
F = func()




end