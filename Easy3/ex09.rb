require 'pry'

def reverse(word)
  new_string = ''
  counter = 1
  while counter <= word.length
    new_string << word[-counter]
    counter += 1
  end
  new_string
end

def palindrome?(text)
  text == reverse(text)
end

def only_alphanumeric(text)
  alphanumerics = Array('a'..'z') + Array('0'..'9')
  characters = text.downcase.split("")
  characters.delete_if do |char|
    !alphanumerics.include?(char)
  end
  characters.join("")
end

def real_palindrome?(text)
  text = only_alphanumeric(text)
  palindrome?(text)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
