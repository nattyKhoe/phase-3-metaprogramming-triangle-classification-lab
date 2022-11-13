class Triangle
  def initialize (s1,s2,s3)
    if (s1 > 0 && s2 > 0 && s3 > 0)
      if ((s1 + s2 > s3) && (s2 + s3 > s1) &&(s1 + s3 > s2))
        @s1 = s1
        @s2 = s2
        @s3 = s3
      else
        raise TriangleError
        # begin TriangleError
        #   raise TriangleError
        # rescue TriangleError => error
        #   puts error.message2
        # end
      end
    else
      raise TriangleError
      # begin TriangleError
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    end
  end

  def kind
    if (@s1==@s2 && @s2==@s3)
      :equilateral
    elsif (@s1==@s2 || @s2==@s3 || @s1==@s3)
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Each side must be larger than 0."
    end

    def message2
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality."
    end
  end

end
