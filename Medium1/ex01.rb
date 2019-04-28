require 'pry'

def rotate_array(arr)
  copy_arr = arr.dup
  copy_arr[arr.size] = copy_arr[0]
  copy_arr.delete_at(0)
  copy_arr
end

def rotate_string(str)
  str[1..-1] + str[0]
end

puts "Array"
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]

puts "String"
p rotate_string("how are you doing?")
