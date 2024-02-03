module HelloworldJulia


include(joinpath("functions", "Esempio1.jl"))
using .Esempio1

F = func(1)
 
include(joinpath("functions", "HelloworldFile.jl"))
using .HelloworldFile


end


