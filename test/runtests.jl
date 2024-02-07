using HelloworldJulia
using Test

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


