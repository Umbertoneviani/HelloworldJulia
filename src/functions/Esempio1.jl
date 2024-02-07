#Esempio1.jl

module Esempio1

using Random

#func

export func
export random_function

"""
    func(x,y)

Return double the number `x` plus `1` (rivedi).

e prova latek

The Schrödinger equation in a docstring:

``i\\hbar\\frac{\\partial}{\\partial t}\\Psi(r,t) = \\left[ \\frac{-\\hbar^2}{2m}\\nabla^2 + V(r,t) \\right] \\Psi(r,t)``

This equation describes how the quantum state of a physical system changes over time.

---


altra prova di latec a seguire:

---

Maxwell's equations describe the fundamentals of electricity and magnetism. They can be written as:


```math
\\begin{aligned}
\\nabla \\cdot \\mathbf{E}  &= 4 \\pi \\rho \\\\
\\nabla \\cdot \\mathbf{B}  &= 0 \\\\
\\nabla \\times \\mathbf{E} &= - \\frac{1}{c} \\frac{\\partial \\mathbf{B}}{\\partial t} \\\\
\\nabla \\times \\mathbf{B} &= - \\frac{1}{c} \\left(4 \\pi \\mathbf{J} + \\frac{\\partial \\mathbf{E}}{\\partial t} \\right)
\\end{aligned}
```


"""
function func(x,y)
    return x + 3y
end

#rand

"""
    random_function(min::Int, max::Int)

Generate a random integer between `min` and `max`.
"""
function random_function(min::Int, max::Int)
    return rand(min:max)
end



end