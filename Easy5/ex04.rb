require 'pry'

def swap(words)
  string = words.split(' ').map do |word|
    if word.length >= 2
      word[-1] + word[1...-1] + word[0]
    else
      word
    end
  end
  string.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
