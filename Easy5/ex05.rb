=begin
  text = string.split("")
  counter = 0
  text.each_with_idx |char, idx|
    if char == ' '
      counter += 1
    end
    if counter >= 2
      text[idx-counter..idx] = ' '
    end
  end
=end

#I will come back for it
def my_squeeze(string)
  counter = 0
end

def alphanumeric?(character)
  alphanumerics = Array('a'..'z') + Array('0'..'9')
    !!alphanumerics.include?(character)
end

def cleanup(text)
  charracters = text.split("")
  spaced_array = []

  charracters.each do |char|
    if alphanumeric?(char)
      spaced_array << char
    elsif !alphanumeric?(char)
      spaced_array << " "
    end
  end
  spaced_array.join("").squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
