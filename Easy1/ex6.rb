def reverse(word)
  new_string = ''
  counter = 1
  while counter <= word.length
    new_string << word[-counter]
    counter += 1
  end
  new_string
end


def reverse_words(words)
  text_array = words.split(" ")
  new_text = []

  text_array.each do |word|
    if word.length >= 5
      new_text << reverse(word)
    else
      new_text << word
    end
  end
  new_text.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
