def multisum(n)
  multiples = []
  while n > 0
    multiples <<  n if n % 3 == 0 || n % 5 == 0
    n -= 1
  end
  multiples.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
