class Triangle
  class TriangleError < StandardError
  end
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind
    
    if @side_a <= 0 || @side_b <= 0 || @side_c <= 0 || (@side_a + @side_b <= @side_c) || (@side_b + @side_c <= @side_a) || (@side_c + @side_a <= @side_b)
      raise TriangleError.new("Invalid triangle")
    end
  
    if @side_a == @side_b && @side_b == @side_c
      return :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_c == @side_a
      return :isosceles
    else
      return :scalene
    end
  end
end
