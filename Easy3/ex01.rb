def number_end(n)
  number_string = n.to_s
  case number_string[-1]
  when '1'
    "#{n}st"
  when '2'
    "#{n}nd"
  when '3'
    "#{n}rd"
  else
    "#{n}th"
  end
end

number = nil
numbers = []
counter = 1

while counter < 5
  puts "==> Enter the #{number_end(counter)} number:"
  number = gets.chomp.to_i
  numbers << number
  counter += 1
end

puts "==> Enter the last number:"
number = gets.chomp.to_i

if numbers.include?(number)
  puts "The number #{number} appears in #{numbers}"
else
    puts "The number #{number} does not appear in #{numbers}"
end
