module HelloworldJulia

using Revise

include(joinpath("functions", "Esempio1.jl"))
include(joinpath("functions", "HelloworldFile.jl"))


H = hello()
F = func()

end
