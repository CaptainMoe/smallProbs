require 'pry'

def letters?(character)
  letters = Array('a'..'z')
  !!letters.include?(character.downcase)
end

def count_word(word)
  counter = 0
  word.split("").each do |let|
    counter += 1 if letters?(let)
  end
  counter
end

def word_sizes(words)
  count = Hash.new(0)
  words.split(" ").each do |word|
    #binding.pry
    count[count_word(word)] += 1
  end
  count
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
