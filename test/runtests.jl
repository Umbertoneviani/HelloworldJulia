using HelloworldJulia
using Test

@testset "HelloworldJulia Tests" begin
    @testset "Functionality 1" begin
        @test func(2,1) == 5
        @test func(5,4) == 17

        # Test 1: Both positive numbers
        @test func(2, 3) == 11

        # Test 2: Both negative numbers
        @test my_function(-2, -3) == -11

        # Test 3: Zero and a positive number
        @test my_function(0, 4) == 12

        # Test 4: Positive and zero
        @test my_function(5, 0) == 5

        # Test 5: Zero for both x and y
        @test my_function(0, 0) == 0
 
        # Test 6: Large numbers
        @test my_function(10000, 20000) == 60000

        # Test 7: Small (close to zero) positive numbers
        @test my_function(0.1, 0.2) == 0.7

        # Test 8: x positive, y negative
        @test my_function(5, -2) == -1

        # Test 9: x negative, y positive
        @test my_function(-4, 1) == -1

        # Test 10: Fractional numbers
        @test my_function(1.5, 2.5) == 9.0
   end

end

    @testset "Functionality 2" begin
        # Add tests here
    end

    # Add more @testset blocks for different functionalities or components of your package


