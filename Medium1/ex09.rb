
def fibonacci(n)
  n1 = 1
  n2 = 1
  counter = 2
  return 1 if n <= 2
  while counter < n
    n3 = n1
    n1 = n2
    n2 += n3
    counter += 1
  end
  n2
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
#p fibonacci(100_001) # => 4202692702.....8285979669707537501
