
def triangle(s, s2, s3)
  triangle_arr = [s, s2, s3]
  short_sides = triangle_arr.sum - triangle_arr.max

  return :invalid if short_sides <= triangle_arr.max
  return :isosceles if triangle_arr.any? { |s| triangle_arr.count(s) == 2 }
  return :equilateral if triangle_arr.count(s) == 3
  return :scalene if triangle_arr.uniq.size == 3
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
