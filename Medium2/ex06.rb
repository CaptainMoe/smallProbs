
def triangle(a1, a2, a3)
  triangle_arr = [a1, a2, a3]
  angle_sum = triangle_arr.sum
  case
  when angle_sum != 180 || triangle_arr.include?(0) then :invalid
  when triangle_arr.include?(90) then :right
  when triangle_arr.all? { |angle| angle < 90} then :acute
  when triangle_arr.any? { |angle| angle > 90} then :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
