def crunch(string)
  crunched_array = ''
  string.split("").each do |char|
    crunched_array << char if crunched_array[-1] != char
  end
  crunched_array
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
