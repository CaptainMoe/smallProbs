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

def palindromic_number?(n)
  n = n.to_s
  palindrome?(n)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
