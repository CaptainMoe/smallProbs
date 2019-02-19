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

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
