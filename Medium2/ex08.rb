require 'pry'

def unique_digits(number)
  number.to_s.chars.uniq.join.to_i == number
end

def featured(number)
  loop do
    #binding.pry
    number += 1
    if number.odd? && number % 7 == 0 && unique_digits(number)
      return number
    elsif number >= 9_876_543_210
      break 'There is no possible number that fulfills those requirements.'
    end
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_998) # -> There is no possible number that fulfills those requirements
