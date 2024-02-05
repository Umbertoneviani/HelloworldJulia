module HelloworldJulia

using Revise

include(joinpath("functions", "Esempio1.jl"))
include(joinpath("functions", "HelloworldFile.jl"))


H = HelloworldFile.hello()
F = Esempio1.func(3)

end
