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

def year_end(century)
  num_string = century.to_s
  unless num_string.end_with?('11') ||
         num_string.end_with?('12') ||
         num_string.end_with?('13')

         return number_end(century)
  end
    "#{century}th"
end

def century(year)
  n = year.divmod(100)
  cent = nil
  if n[1] > 0
    cent = n[0] + 1
  else
    cent = n[0]
  end
  year_end(cent)
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
