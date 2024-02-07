using HelloworldJulia
using Test

@testset "HelloworldJulia Tests" begin
    @testset "Functionality 1" begin
        @test func(2) == 5
        @test func(5) == 11
   end

    end

    @testset "Functionality 2" begin
        # Add tests here
    end

    # Add more @testset blocks for different functionalities or components of your package
end

