
def max_rotation(number)
  number_digits = number.to_s.size
  arr = number.to_s.chars

  0.upto(number_digits-2) do |n|
    fixed = arr[0...n]
    rotate = arr[n..-1]

    arr = fixed + (rotate.push(rotate.shift))
  end
  arr.join("").to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
