require 'pry'

class Triangle

  attr_reader :side1_length, :side2_length, :side3_length

  def initialize(side1_length, side2_length, side3_length)
    @side1_length, @side2_length, @side3_length = side1_length, side2_length, side3_length
    @all = []
    @all << side1_length
    @all << side2_length
    @all << side3_length
  end

  def kind

  sorted_list = @all.sort

  sorted_list.each do |num|
    if num <= 0
      begin
        raise TriangleError
      end
    elsif sorted_list[0] + sorted_list[1] <= sorted_list[2]
      begin
        raise TriangleError
      end
    elsif side1_length == side2_length && side2_length == side3_length
      return :equilateral
    elsif side1_length == side2_length || side1_length == side3_length || side2_length == side3_length
      return :isosceles
    else
      return :scalene
    end
  end
end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side and must be greater than 0!"
    end
  end

end
