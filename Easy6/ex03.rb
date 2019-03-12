require 'pry'

def find_fibonacci_index_by_length(number_digit)
  fib_series = [0, 1]
  idx = 0
  #binding.pry
  while fib_series.last.to_s.size < number_digit
    fib_series << fib_series[idx] + fib_series[idx+1]
    idx += 1
  end
  fib_series.size - 1
end


puts find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
