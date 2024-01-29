# Helloworld.jl

module HelloworldFile

export hello


"""
# Helloworld Module

The `Helloworld` module demonstrates a simple Julia program that prints 'Hello, World!'.

## Module Functions

- `hello()`: Prints 'Hello, World!' to the standard output.


        hello()

Print 'Hello, World!' to the standard output.
"""
function hello()
    println("Hello, World!")
end

end
