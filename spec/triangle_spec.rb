require('rspec')
require('triangle')

describe(Triangle) do
    describe("#equilateral") do
        it("returns the type of a triangle") do
            new_triangle = Triangle.new(10, 10, 10)
            expect(new_triangle.equilateral()).to(eq(true))
        end
        it("returns the type of a triangle") do
            new_triangle = Triangle.new(10, 20, 10)
            expect(new_triangle.equilateral()).to(eq(false))
        end

    end

    describe("#isosceles") do
        it("returns true if type of a triangle is isosceles") do
            new_triangle = Triangle.new(10, 10, 20)
            expect(new_triangle.isosceles()).to(eq(true))
        end
        it("returns the type of a triangle") do
            new_triangle = Triangle.new(10, 20, 30)
            expect(new_triangle.isosceles()).to(eq(false))
        end
    end

    describe("#scalene") do
        it("returns true if type of a triangle is scalene") do
            new_triangle = Triangle.new(10, 20, 30)
            expect(new_triangle.scalene()).to(eq(true))
        end
        it("returns true if type of a triangle is scalene") do
            new_triangle = Triangle.new(10, 20, 20)
            expect(new_triangle.scalene()).to(eq(false))
        end
    end

    describe("#not_triangle") do
        it("returns true if type of a triangle is not a triangle") do
            new_triangle = Triangle.new(10, 5, 30)
            expect(new_triangle.not_triangle()).to(eq(true))
        end
        it("returns true if type of a triangle is not a triangle") do
            new_triangle = Triangle.new(10, 20, 20)
            expect(new_triangle.not_triangle()).to(eq(false))
        end
    end

end
