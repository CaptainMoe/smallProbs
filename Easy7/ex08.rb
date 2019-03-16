
def multiply_list(array1, array2)
  new_array = []
  array1.each_with_index do |num, idx|
    new_array << num * array2[idx]
  end
  new_array
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
