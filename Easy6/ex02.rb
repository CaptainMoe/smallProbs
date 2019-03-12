
def remove_vowels(words)
  vowels = 'aeiou'
  new_array = []
  words.each do |word|
    novowel_word = ''
    word.split("").each do |letter|
      novowel_word << letter unless vowels.include?(letter.downcase)
    end
    new_array << novowel_word
  end
  new_array
end


puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
