require 'pry'

def count_up(n)
  arr = []
  1.upto(n) { |n|  arr << n}
  arr
end

def sequence(count, first)
  (1..count).map { |idx| idx * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
