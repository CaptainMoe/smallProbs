def sum(array)
  array.sum
end

def product(array)
  result = 1
  array.each do |n|
    result *= n
  end
  result
end

puts ">> Please enter an integer greater than 0:"
n = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

numbers = Array(1..n)

case operation
when 's'
  puts "The sum of the integers between 1 and #{n} is #{sum(numbers)}."
when 'p'
  puts "The product of the integers between 1 and #{n} is #{product(numbers)}."
end
