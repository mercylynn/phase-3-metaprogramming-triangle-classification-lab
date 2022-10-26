class Triangle
  # write code here
  attr_reader :length ,:width ,:height
  def initialize(length,width,height)
    @length = length
    @width = width
    @height = height
  end

  def kind 
    if @length <= 0 || @width <= 0 || @height <= 0
      raise TriangleError
    elsif @length + @width <= @height || @length + @height <= @width || @width + @height <= @length
      raise TriangleError
    else
      return :equilateral if @length == @width && @width == @height
      return :isosceles if @length == @width || @length == @height || @width == @height
      return :scalene if @length != @width && @length != @height && @width != @height
    end
  end


  class TriangleError < StandardError
    
  end
end

