
def interleave(array1, array2)
  mixed_array = []

  array1.each_with_index do |element, idx|
    mixed_array << element
    mixed_array << array2[idx]
  end
  mixed_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
