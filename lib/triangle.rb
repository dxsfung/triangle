require('pry')

class Triangle
    define_method(:initialize) do |a, b, c|
        @a = a
        @b = b
        @c = c
    end


    define_method(:equilateral) do
        (@a.eql?(@b)) && (@b.eql?(@c))
    end

    define_method(:isosceles) do
        (@a.eql?(@b)) || (@b.eql?(@c)) || (@a.eql?(@c))
    end

    define_method(:scalene) do
        (@a != @b) && (@b != @c) && (@a != @c)
    end

    define_method(:not_triangle) do
      (@a >= (@b+@c)) || (@b >= (@a+@c))  || (@c >= (@b+@a))
    end

    define_method(:triangle_type) do
        if self.not_triangle == true
            return "not a triangle"
        elsif
            self.equilateral == true
            return "an equilateral triangle"
        elsif
            self.isosceles == true
            return "an isosceles triangle"
        elsif
            self.scalene == true
            return "a scalene triangle"
        else
            return "other form of triangle"
        end
    end

end
