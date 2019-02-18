require 'pry'

def reverse_sentence(text)
  text_arry = text.split(" ")
  new_string = []
  counter = 1
  while counter <= text_arry.length
    binding.pry
    new_string << text_arry[-counter]
    counter += 1
  end
  new_string.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
