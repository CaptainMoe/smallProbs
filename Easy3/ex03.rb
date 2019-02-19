def count_char(words)
  letter_cout = 0
  words.split("").each do |let|
    if let != ' '
      letter_cout += 1
    end
  end
  letter_cout
end

puts "Please write word or multiple words:"
words = gets.chomp

puts "There are #{count_char(words)} characters"
