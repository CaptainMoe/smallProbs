
def show_multiplicative_average(array)
  product = 1
  array.each {|num| product *= num}
  avarage = product.to_f/array.size
  format("%.3f", avarage.round(3))
end


puts show_multiplicative_average([3, 5])
puts show_multiplicative_average([6])
puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
