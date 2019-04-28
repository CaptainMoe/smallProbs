
def word_to_digit(string)
  digits = ['zero', 'one', 'two', 'three', 'four', 'five',
            'six', 'seven', 'eight', 'nine']
  digits.each do |number|
    string.gsub!(number + " ", digits.index(number).to_s)
    string.gsub!(number, digits.index(number).to_s)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
