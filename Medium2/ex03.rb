
UP = Array('A'..'Z')
DOWN = Array('a'..'z')

def letter_percentages(string)
  str_arr = string.chars
  freq_char = {uppercase: 0, lowercase: 0, neither: 0}
  rate = 100.0 / string.size
  str_arr.each do |char|
    if UP.include?(char)
      freq_char[:uppercase] += rate
    elsif DOWN.include?(char)
      freq_char[:lowercase] += rate
    else
      freq_char[:neither] += rate
    end
  end
  freq_char
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
