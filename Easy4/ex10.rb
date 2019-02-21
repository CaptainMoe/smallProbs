def to_num(string_n)
  case string_n
  when 1 then '1'
  when 2 then '2'
  when 3 then '3'
  when 4 then '4'
  when 5 then '5'
  when 6 then '6'
  when 7 then '7'
  when 8 then '8'
  when 9 then '9'
  when 0 then '0'
  end
end

def integer_to_string(number)
  string = ''
  # the while loop doesn't consider when the number is 0
  if number == 0
    return '0'
  end
  while number > 0
    division = number.divmod(10)
    number = division[0]
    string.prepend(to_num(division[1]))
  end
  string
end

def signed_integer_to_string(number)
  sign = ''
  if number < 0
    sign = '-'
    number *= -1
  elsif number > 0
    sign = '+'
  end
  integer_to_string(number).prepend(sign)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
