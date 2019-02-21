def number?(string_n)
  case string_n
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  when '0' then 0
  end
end

def string_to_integer(string)
  power = 10 ** (string.size - 1)
  number = 0

  string.split("").each do |n_string|
    number += power * number?(n_string)
    power /= 10
  end
  number
end

def string_to_signed_integer(n_string)
    string_arr = n_string.split("")
    sign = 1
    if string_arr[0] == '-'
      sign = -1
      string_arr.shift
    elsif string_arr[0] == '+'
      string_arr.shift
    end
    string_to_integer(string_arr.join) * sign
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
