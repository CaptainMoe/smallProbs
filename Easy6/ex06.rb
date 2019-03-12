def merge(arr1, arr2)
  arr2.each do |n|
    arr1 << n unless arr1.include?(n)
  end
  arr1
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
