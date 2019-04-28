

def rotate_array(arr)
  copy_arr = arr.dup
  copy_arr[arr.size] = copy_arr[0]
  copy_arr.delete_at(0)
  copy_arr
end

def rotate_rightmost_digits(number, n)
  num_chars = number.to_s.chars
  result = num_chars[0...-n] + rotate_array(num_chars[-n..-1])
  result.join("").to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
