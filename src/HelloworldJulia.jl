module HelloworldJulia



using Revise

include(joinpath("functions", "Esempio1.jl"))
include(joinpath("functions", "HelloworldFile.jl"))

# Import the functions into the current module's namespace
using .Esempio1: func
using .Esempio1: random_function
using .HelloworldFile: hello

# Now export them
export func, hello, random_function

end
