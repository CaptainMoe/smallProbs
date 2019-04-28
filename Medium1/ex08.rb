require 'pry'

def fibonacci(n)
  binding.pry
  return 1 if n <= 2
  n1 = fibonacci(n-1)
  n2 = fibonacci(n-2)
  n1 + n2
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
