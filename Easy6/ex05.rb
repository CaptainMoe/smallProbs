def reverse(array)
  counter = 1
  reversed_arr = []
  while counter <= array.size
    reversed_arr << array[-counter]
    counter += 1
  end
  reversed_arr
end
