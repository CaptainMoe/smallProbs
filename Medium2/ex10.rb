
def sum_square_difference(num)
  square_sum = 0
  sum_square = 0
  
  (1..num).each do  |n|
     sum_square += n**2
     square_sum += n
  end

  square_sum = square_sum ** 2
  square_sum - sum_square
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
