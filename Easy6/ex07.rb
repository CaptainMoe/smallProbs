require 'pry'

def halvsies(array)
  half = array.size / 2
  if array.size.even?
    return array[0...half], array[half..-1]
  elsif array.size.odd?
    return array[0..half], array[half+1..-1]
  end
end


puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
