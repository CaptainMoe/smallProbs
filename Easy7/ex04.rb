
def swapcase(string)
  new_string = ''
  string.chars do |char|
    if ('A'..'Z').include?(char)
      new_string << char.downcase
    elsif ('a'..'z').include?(char)
      new_string << char.upcase
    else
      new_string << char
    end
  end
  new_string
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
