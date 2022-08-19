class Triangle
  # write code here


  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    triangle = [@length,@width,@height].uniq
    pp triangle
    if (@length > 0 && @width > 0 && @height > 0) && ((@length + @width > @height) && (@length + @height > @width ) && (@width + @height > @length))
      if triangle.size == 1
        :equilateral
      elsif triangle.size == 2
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end

  
  end

  class TriangleError < StandardError
  end
end

eq = Triangle.new(3,3,3)