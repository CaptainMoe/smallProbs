
def sequence(n)
  arr = []
  1.upto(n) { |n|  arr << n}
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
