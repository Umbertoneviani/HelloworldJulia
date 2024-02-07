using HelloworldJulia
using Test

@testset "random_function Tests" begin
    min_val, max_val = 1, 10
    random_values = [HelloworldJulia.random_function(min_val, max_val) for _ in 1:100]

    # Test that all random values are within the specified range
    @test all(min_val <= val <= max_val for val in random_values)

    # Test that the function produces different values (not strictly necessary,
    # but useful to check randomness in a very basic way)
    @test length(unique(random_values)) > 1
end



@testset "Set 1" begin
  
      @test func(2,1) == 5
      @test func(5,4) == 17

      # Test 1: Both positive numbers
      @test func(2, 3) == 11

      # Test 2: Both negative numbers
      @test func(-2, -3) == -11

      # Test 3: Zero and a positive number
      @test func(0, 4) == 12

      # Test 4: Positive and zero
      @test func(5, 0) == 5

      # Test 5: Zero for both x and y
      @test func(0, 0) == 0
 
      # Test 6: Large numbers
      @test func(10000, 20000) == 70000

      # Test 8: x positive, y negative
      @test func(5, -2) == -1

      # Test 9: x negative, y positive
      @test func(-4, 1) == -1

      # Test 10: Fractional numbers
      @test func(1.5, 2.5) == 9.0
        
   end


    @testset "Set 2" begin
  
        # Test over a range of integers
            for x in -5:5
                for y in -5:5
                    expected = x + 3*y
                    @test func(x, y) == expected
                end
            end
    end

    # Add more @testset blocks for different functionalities or components of your package


