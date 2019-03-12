require 'pry'

def reverse(array)
  counter = 1
  reversed_arr = []
  while counter <= array.size
    reversed_arr << array[-counter]
    counter += 1
  end
  reversed_arr
end

def reverse!(array)
  counter = 0
  reversed_arr = reverse(array)
  while counter < array.size
    #binding.pry
    array[counter] = reversed_arr[counter]
    counter += 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts(reverse!(list) == ["c", "d", "e", "b", "a"])
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
puts(reverse!(list) == ["abc"])
puts(list == ["abc"])

list = []
puts reverse!(list) == []
puts list == []
